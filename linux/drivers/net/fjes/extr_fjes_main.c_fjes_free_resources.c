
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int mtu; int dev_addr; } ;
struct TYPE_6__ {TYPE_2__* share; int res_buf; int res_buf_size; int req_buf; int req_buf_size; scalar_t__ buffer_share_bit; int lock; } ;
struct fjes_hw {int max_epid; int my_epid; TYPE_3__ hw_info; int txrx_stop_req_bit; int rx_status_lock; struct ep_share_mem_info* ep_shm_info; } ;
struct fjes_device_command_param {void* share_start; void* res_start; int res_len; void* req_start; int req_len; } ;
struct fjes_adapter {int force_reset; int open_guard; struct fjes_hw hw; struct net_device* netdev; } ;
struct TYPE_4__ {int com_unregist_buf_exec; } ;
struct ep_share_mem_info {int tx; TYPE_1__ ep_stats; } ;
typedef int param ;
struct TYPE_5__ {int ep_status; } ;


 void* __pa (int ) ;
 int clear_bit (int,int *) ;
 int fjes_hw_init_command_registers (struct fjes_hw*,struct fjes_device_command_param*) ;
 int fjes_hw_reset (struct fjes_hw*) ;
 int fjes_hw_setup_epbuf (int *,int ,int ) ;
 int fjes_hw_unregister_buff_addr (struct fjes_hw*,int) ;
 int memset (void*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fjes_free_resources(struct fjes_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct fjes_device_command_param param;
 struct ep_share_mem_info *buf_pair;
 struct fjes_hw *hw = &adapter->hw;
 bool reset_flag = 0;
 unsigned long flags;
 int result;
 int epidx;

 for (epidx = 0; epidx < hw->max_epid; epidx++) {
  if (epidx == hw->my_epid)
   continue;

  mutex_lock(&hw->hw_info.lock);
  result = fjes_hw_unregister_buff_addr(hw, epidx);
  mutex_unlock(&hw->hw_info.lock);

  hw->ep_shm_info[epidx].ep_stats.com_unregist_buf_exec += 1;

  if (result)
   reset_flag = 1;

  buf_pair = &hw->ep_shm_info[epidx];

  spin_lock_irqsave(&hw->rx_status_lock, flags);
  fjes_hw_setup_epbuf(&buf_pair->tx,
        netdev->dev_addr, netdev->mtu);
  spin_unlock_irqrestore(&hw->rx_status_lock, flags);

  clear_bit(epidx, &hw->txrx_stop_req_bit);
 }

 if (reset_flag || adapter->force_reset) {
  result = fjes_hw_reset(hw);

  adapter->force_reset = 0;

  if (result)
   adapter->open_guard = 1;

  hw->hw_info.buffer_share_bit = 0;

  memset((void *)&param, 0, sizeof(param));

  param.req_len = hw->hw_info.req_buf_size;
  param.req_start = __pa(hw->hw_info.req_buf);
  param.res_len = hw->hw_info.res_buf_size;
  param.res_start = __pa(hw->hw_info.res_buf);
  param.share_start = __pa(hw->hw_info.share->ep_status);

  fjes_hw_init_command_registers(hw, &param);
 }
}
