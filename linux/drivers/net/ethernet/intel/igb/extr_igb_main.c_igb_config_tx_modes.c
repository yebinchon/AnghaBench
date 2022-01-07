
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct igb_ring {int idleslope; int hicredit; int locredit; int sendslope; scalar_t__ launchtime_enable; scalar_t__ cbs_enable; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {struct e1000_hw hw; struct net_device* netdev; struct igb_ring** tx_ring; } ;


 int DIV_ROUND_UP_ULL (unsigned long long,int) ;
 int E1000_I210_TQAVCC (int) ;
 int E1000_I210_TQAVCTRL ;
 int E1000_I210_TQAVHC (int) ;
 int E1000_TQAVCC_IDLESLOPE_MASK ;
 int E1000_TQAVCTRL_DATATRANARB ;
 int E1000_TQAVCTRL_DATATRANTIM ;
 int E1000_TQAVCTRL_FETCHTIME_DELTA ;
 int ETH_FRAME_LEN ;
 int QUEUE_MODE_STREAM_RESERVATION ;
 int QUEUE_MODE_STRICT_PRIORITY ;
 int TX_QUEUE_PRIO_HIGH ;
 int TX_QUEUE_PRIO_LOW ;
 int WARN_ON (int) ;
 scalar_t__ e1000_i210 ;
 int is_any_cbs_enabled (struct igb_adapter*) ;
 int is_any_txtime_enabled (struct igb_adapter*) ;
 int netdev_dbg (struct net_device*,char*,char*,char*,int,unsigned long long,int ,int,int ) ;
 int rd32 (int ) ;
 int set_queue_mode (struct e1000_hw*,int,int ) ;
 int set_tx_desc_fetch_prio (struct e1000_hw*,int,int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static void igb_config_tx_modes(struct igb_adapter *adapter, int queue)
{
 struct igb_ring *ring = adapter->tx_ring[queue];
 struct net_device *netdev = adapter->netdev;
 struct e1000_hw *hw = &adapter->hw;
 u32 tqavcc, tqavctrl;
 u16 value;

 WARN_ON(hw->mac.type != e1000_i210);
 WARN_ON(queue < 0 || queue > 1);





 if (ring->cbs_enable || ring->launchtime_enable) {
  set_tx_desc_fetch_prio(hw, queue, TX_QUEUE_PRIO_HIGH);
  set_queue_mode(hw, queue, QUEUE_MODE_STREAM_RESERVATION);
 } else {
  set_tx_desc_fetch_prio(hw, queue, TX_QUEUE_PRIO_LOW);
  set_queue_mode(hw, queue, QUEUE_MODE_STRICT_PRIORITY);
 }


 if (ring->cbs_enable || queue == 0) {
  if (queue == 0 && !ring->cbs_enable) {

   ring->idleslope = 1000000;
   ring->hicredit = ETH_FRAME_LEN;
  }





  tqavctrl = rd32(E1000_I210_TQAVCTRL);
  tqavctrl |= E1000_TQAVCTRL_DATATRANARB;
  wr32(E1000_I210_TQAVCTRL, tqavctrl);
  value = DIV_ROUND_UP_ULL(ring->idleslope * 61034ULL, 1000000);

  tqavcc = rd32(E1000_I210_TQAVCC(queue));
  tqavcc &= ~E1000_TQAVCC_IDLESLOPE_MASK;
  tqavcc |= value;
  wr32(E1000_I210_TQAVCC(queue), tqavcc);

  wr32(E1000_I210_TQAVHC(queue),
       0x80000000 + ring->hicredit * 0x7735);
 } else {


  tqavcc = rd32(E1000_I210_TQAVCC(queue));
  tqavcc &= ~E1000_TQAVCC_IDLESLOPE_MASK;
  wr32(E1000_I210_TQAVCC(queue), tqavcc);


  wr32(E1000_I210_TQAVHC(queue), 0);





  if (!is_any_cbs_enabled(adapter)) {
   tqavctrl = rd32(E1000_I210_TQAVCTRL);
   tqavctrl &= ~E1000_TQAVCTRL_DATATRANARB;
   wr32(E1000_I210_TQAVCTRL, tqavctrl);
  }
 }


 if (ring->launchtime_enable) {
  tqavctrl = rd32(E1000_I210_TQAVCTRL);
  tqavctrl |= E1000_TQAVCTRL_DATATRANTIM |
         E1000_TQAVCTRL_FETCHTIME_DELTA;
  wr32(E1000_I210_TQAVCTRL, tqavctrl);
 } else {




  if (!is_any_txtime_enabled(adapter)) {
   tqavctrl = rd32(E1000_I210_TQAVCTRL);
   tqavctrl &= ~E1000_TQAVCTRL_DATATRANTIM;
   tqavctrl &= ~E1000_TQAVCTRL_FETCHTIME_DELTA;
   wr32(E1000_I210_TQAVCTRL, tqavctrl);
  }
 }






 netdev_dbg(netdev, "Qav Tx mode: cbs %s, launchtime %s, queue %d idleslope %d sendslope %d hiCredit %d locredit %d\n",
     ring->cbs_enable ? "enabled" : "disabled",
     ring->launchtime_enable ? "enabled" : "disabled",
     queue,
     ring->idleslope, ring->sendslope,
     ring->hicredit, ring->locredit);
}
