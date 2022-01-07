
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct e1000_tx_desc {int dummy; } ;
struct e1000_hw {int mac_type; scalar_t__ media_type; scalar_t__ bus_type; } ;
struct e1000_adapter {int num_tx_queues; int tx_int_delay; int tx_abs_int_delay; int txd_cmd; int pcix_82544; TYPE_1__* tx_ring; struct e1000_hw hw; } ;
struct TYPE_2__ {int dma; int count; int tdt; int tdh; } ;


 int DEFAULT_82542_TIPG_IPGR1 ;
 int DEFAULT_82542_TIPG_IPGR2 ;
 int DEFAULT_82542_TIPG_IPGT ;
 int DEFAULT_82543_TIPG_IPGR1 ;
 int DEFAULT_82543_TIPG_IPGR2 ;
 int DEFAULT_82543_TIPG_IPGT_COPPER ;
 int DEFAULT_82543_TIPG_IPGT_FIBER ;
 int E1000_82542_TDH ;
 int E1000_82542_TDT ;
 int E1000_COLLISION_THRESHOLD ;
 int E1000_CT_SHIFT ;
 int E1000_TCTL_CT ;
 int E1000_TCTL_PSP ;
 int E1000_TCTL_RTLC ;
 int E1000_TDH ;
 int E1000_TDT ;
 int E1000_TIPG_IPGR1_SHIFT ;
 int E1000_TIPG_IPGR2_SHIFT ;
 int E1000_TXD_CMD_EOP ;
 int E1000_TXD_CMD_IDE ;
 int E1000_TXD_CMD_IFCS ;
 int E1000_TXD_CMD_RPS ;
 int E1000_TXD_CMD_RS ;
 int TADV ;
 int TCTL ;
 int TDBAH ;
 int TDBAL ;
 int TDH ;
 int TDLEN ;
 int TDT ;
 int TIDV ;
 int TIPG ;
 int e1000_82540 ;


 int e1000_82543 ;
 int e1000_82544 ;
 scalar_t__ e1000_bus_type_pcix ;
 int e1000_config_collision_dist (struct e1000_hw*) ;
 scalar_t__ e1000_media_type_fiber ;
 scalar_t__ e1000_media_type_internal_serdes ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

__attribute__((used)) static void e1000_configure_tx(struct e1000_adapter *adapter)
{
 u64 tdba;
 struct e1000_hw *hw = &adapter->hw;
 u32 tdlen, tctl, tipg;
 u32 ipgr1, ipgr2;



 switch (adapter->num_tx_queues) {
 case 1:
 default:
  tdba = adapter->tx_ring[0].dma;
  tdlen = adapter->tx_ring[0].count *
   sizeof(struct e1000_tx_desc);
  ew32(TDLEN, tdlen);
  ew32(TDBAH, (tdba >> 32));
  ew32(TDBAL, (tdba & 0x00000000ffffffffULL));
  ew32(TDT, 0);
  ew32(TDH, 0);
  adapter->tx_ring[0].tdh = ((hw->mac_type >= e1000_82543) ?
        E1000_TDH : E1000_82542_TDH);
  adapter->tx_ring[0].tdt = ((hw->mac_type >= e1000_82543) ?
        E1000_TDT : E1000_82542_TDT);
  break;
 }


 if ((hw->media_type == e1000_media_type_fiber ||
      hw->media_type == e1000_media_type_internal_serdes))
  tipg = DEFAULT_82543_TIPG_IPGT_FIBER;
 else
  tipg = DEFAULT_82543_TIPG_IPGT_COPPER;

 switch (hw->mac_type) {
 case 129:
 case 128:
  tipg = DEFAULT_82542_TIPG_IPGT;
  ipgr1 = DEFAULT_82542_TIPG_IPGR1;
  ipgr2 = DEFAULT_82542_TIPG_IPGR2;
  break;
 default:
  ipgr1 = DEFAULT_82543_TIPG_IPGR1;
  ipgr2 = DEFAULT_82543_TIPG_IPGR2;
  break;
 }
 tipg |= ipgr1 << E1000_TIPG_IPGR1_SHIFT;
 tipg |= ipgr2 << E1000_TIPG_IPGR2_SHIFT;
 ew32(TIPG, tipg);



 ew32(TIDV, adapter->tx_int_delay);
 if (hw->mac_type >= e1000_82540)
  ew32(TADV, adapter->tx_abs_int_delay);



 tctl = er32(TCTL);
 tctl &= ~E1000_TCTL_CT;
 tctl |= E1000_TCTL_PSP | E1000_TCTL_RTLC |
  (E1000_COLLISION_THRESHOLD << E1000_CT_SHIFT);

 e1000_config_collision_dist(hw);


 adapter->txd_cmd = E1000_TXD_CMD_EOP | E1000_TXD_CMD_IFCS;


 if (adapter->tx_int_delay)
  adapter->txd_cmd |= E1000_TXD_CMD_IDE;

 if (hw->mac_type < e1000_82543)
  adapter->txd_cmd |= E1000_TXD_CMD_RPS;
 else
  adapter->txd_cmd |= E1000_TXD_CMD_RS;




 if (hw->mac_type == e1000_82544 &&
     hw->bus_type == e1000_bus_type_pcix)
  adapter->pcix_82544 = 1;

 ew32(TCTL, tctl);

}
