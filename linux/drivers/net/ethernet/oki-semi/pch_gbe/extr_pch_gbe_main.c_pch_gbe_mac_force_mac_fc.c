
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pch_gbe_mac_info {int fc; int tx_fc_enable; scalar_t__ link_duplex; } ;
struct pch_gbe_hw {TYPE_1__* reg; struct pch_gbe_mac_info mac; } ;
struct pch_gbe_adapter {int netdev; } ;
typedef int s32 ;
struct TYPE_2__ {int RX_FCTRL; } ;


 scalar_t__ DUPLEX_HALF ;
 int EINVAL ;




 int PCH_GBE_FL_CTRL_EN ;
 int ioread32 (int *) ;
 int iowrite32 (int ,int *) ;
 int netdev_dbg (int ,char*,int,...) ;
 int netdev_err (int ,char*) ;
 struct pch_gbe_adapter* pch_gbe_hw_to_adapter (struct pch_gbe_hw*) ;

s32 pch_gbe_mac_force_mac_fc(struct pch_gbe_hw *hw)
{
 struct pch_gbe_adapter *adapter = pch_gbe_hw_to_adapter(hw);
 struct pch_gbe_mac_info *mac = &hw->mac;
 u32 rx_fctrl;

 netdev_dbg(adapter->netdev, "mac->fc = %u\n", mac->fc);

 rx_fctrl = ioread32(&hw->reg->RX_FCTRL);

 switch (mac->fc) {
 case 130:
  rx_fctrl &= ~PCH_GBE_FL_CTRL_EN;
  mac->tx_fc_enable = 0;
  break;
 case 129:
  rx_fctrl |= PCH_GBE_FL_CTRL_EN;
  mac->tx_fc_enable = 0;
  break;
 case 128:
  rx_fctrl &= ~PCH_GBE_FL_CTRL_EN;
  mac->tx_fc_enable = 1;
  break;
 case 131:
  rx_fctrl |= PCH_GBE_FL_CTRL_EN;
  mac->tx_fc_enable = 1;
  break;
 default:
  netdev_err(adapter->netdev,
      "Flow control param set incorrectly\n");
  return -EINVAL;
 }
 if (mac->link_duplex == DUPLEX_HALF)
  rx_fctrl &= ~PCH_GBE_FL_CTRL_EN;
 iowrite32(rx_fctrl, &hw->reg->RX_FCTRL);
 netdev_dbg(adapter->netdev,
     "RX_FCTRL reg : 0x%08x  mac->tx_fc_enable : %d\n",
     ioread32(&hw->reg->RX_FCTRL), mac->tx_fc_enable);
 return 0;
}
