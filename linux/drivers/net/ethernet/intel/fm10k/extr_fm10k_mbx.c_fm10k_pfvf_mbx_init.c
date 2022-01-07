
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct fm10k_msg_data {int dummy; } ;
struct TYPE_4__ {int register_handlers; int process; int enqueue_tx; int tx_complete; int tx_ready; int rx_ready; int disconnect; int connect; } ;
struct fm10k_mbx_info {int tail; int head; TYPE_2__ ops; int * buffer; int rx; int tx; int mbmem_len; int max_size; void* remote; void* local; int udelay; scalar_t__ timeout; struct fm10k_msg_data const* msg_data; int state; int mbmem_reg; int mbx_reg; } ;
struct TYPE_3__ {int type; } ;
struct fm10k_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int FM10K_ERR_PARAM ;
 int FM10K_MBMEM_VF (int,int ) ;
 int FM10K_MBX (int) ;
 void* FM10K_MBX_CRC_SEED ;
 int FM10K_MBX_ERR_NO_MBX ;
 int FM10K_MBX_INIT_DELAY ;
 int FM10K_MBX_MSG_MAX_SIZE ;
 size_t FM10K_MBX_RX_BUFFER_SIZE ;
 size_t FM10K_MBX_TX_BUFFER_SIZE ;
 int FM10K_STATE_CLOSED ;
 int FM10K_VFMBMEM (int ) ;
 int FM10K_VFMBMEM_VF_XOR ;
 int FM10K_VFMBX ;
 int fm10k_fifo_init (int *,int *,size_t) ;


 int fm10k_mbx_connect ;
 int fm10k_mbx_disconnect ;
 int fm10k_mbx_enqueue_tx ;
 int fm10k_mbx_process ;
 int fm10k_mbx_register_handlers ;
 int fm10k_mbx_rx_ready ;
 int fm10k_mbx_tx_complete ;
 int fm10k_mbx_tx_ready ;
 scalar_t__ fm10k_mbx_validate_handlers (struct fm10k_msg_data const*) ;

s32 fm10k_pfvf_mbx_init(struct fm10k_hw *hw, struct fm10k_mbx_info *mbx,
   const struct fm10k_msg_data *msg_data, u8 id)
{

 switch (hw->mac.type) {
 case 128:
  mbx->mbx_reg = FM10K_VFMBX;
  mbx->mbmem_reg = FM10K_VFMBMEM(FM10K_VFMBMEM_VF_XOR);
  break;
 case 129:

  if (id < 64) {
   mbx->mbx_reg = FM10K_MBX(id);
   mbx->mbmem_reg = FM10K_MBMEM_VF(id, 0);
   break;
  }

 default:
  return FM10K_MBX_ERR_NO_MBX;
 }


 mbx->state = FM10K_STATE_CLOSED;


 if (fm10k_mbx_validate_handlers(msg_data))
  return FM10K_ERR_PARAM;


 mbx->msg_data = msg_data;




 mbx->timeout = 0;
 mbx->udelay = FM10K_MBX_INIT_DELAY;


 mbx->tail = 1;
 mbx->head = 1;


 mbx->local = FM10K_MBX_CRC_SEED;
 mbx->remote = FM10K_MBX_CRC_SEED;


 mbx->max_size = FM10K_MBX_MSG_MAX_SIZE;
 mbx->mbmem_len = FM10K_VFMBMEM_VF_XOR;


 fm10k_fifo_init(&mbx->tx, mbx->buffer, FM10K_MBX_TX_BUFFER_SIZE);
 fm10k_fifo_init(&mbx->rx, &mbx->buffer[FM10K_MBX_TX_BUFFER_SIZE],
   FM10K_MBX_RX_BUFFER_SIZE);


 mbx->ops.connect = fm10k_mbx_connect;
 mbx->ops.disconnect = fm10k_mbx_disconnect;
 mbx->ops.rx_ready = fm10k_mbx_rx_ready;
 mbx->ops.tx_ready = fm10k_mbx_tx_ready;
 mbx->ops.tx_complete = fm10k_mbx_tx_complete;
 mbx->ops.enqueue_tx = fm10k_mbx_enqueue_tx;
 mbx->ops.process = fm10k_mbx_process;
 mbx->ops.register_handlers = fm10k_mbx_register_handlers;

 return 0;
}
