
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sky2_port {unsigned int port; TYPE_1__* netdev; scalar_t__ tx_ring_size; int tx_le_map; struct sky2_hw* hw; } ;
struct sky2_hw {scalar_t__ chip_id; scalar_t__ chip_rev; int pdev; struct net_device** dev; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int features; } ;


 int B2_E_0 ;
 scalar_t__ CHIP_ID_YUKON_EC_U ;
 scalar_t__ CHIP_ID_YUKON_EX ;
 scalar_t__ CHIP_REV_YU_EC_U_A0 ;
 scalar_t__ CHIP_REV_YU_EX_B0 ;
 int ECU_TXFF_LEV ;
 int F_TX_CHK_AUTO_OFF ;
 int PCI_CAP_ID_PCIX ;
 scalar_t__ PCI_X_CMD ;
 int PCI_X_CMD_MAX_SPLIT ;
 int Q_ADDR (int ,int ) ;
 int Q_AL ;
 int Q_TEST ;
 int Q_XS1 ;
 int Q_XS2 ;
 int RB_ADDR (int ,int ) ;
 int RB_CTRL ;
 int RB_RST_SET ;
 int netdev_dbg (TYPE_1__*,char*,int) ;
 int netdev_update_features (TYPE_1__*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int pci_find_capability (int ,int ) ;
 int * rxqaddr ;
 int sky2_mac_init (struct sky2_hw*,unsigned int) ;
 int sky2_pci_read16 (struct sky2_hw*,scalar_t__) ;
 int sky2_pci_write16 (struct sky2_hw*,scalar_t__,int ) ;
 int sky2_prefetch_init (struct sky2_hw*,int ,int ,scalar_t__) ;
 int sky2_qset (struct sky2_hw*,int ) ;
 int sky2_ramset (struct sky2_hw*,int ,int,int) ;
 int sky2_read8 (struct sky2_hw*,int ) ;
 int sky2_rx_start (struct sky2_port*) ;
 int sky2_vlan_mode (TYPE_1__*,int ) ;
 int sky2_write16 (struct sky2_hw*,int ,int ) ;
 int sky2_write32 (struct sky2_hw*,int ,int ) ;
 int sky2_write8 (struct sky2_hw*,int ,int ) ;
 int tx_init (struct sky2_port*) ;
 int * txqaddr ;

__attribute__((used)) static void sky2_hw_up(struct sky2_port *sky2)
{
 struct sky2_hw *hw = sky2->hw;
 unsigned port = sky2->port;
 u32 ramsize;
 int cap;
 struct net_device *otherdev = hw->dev[sky2->port^1];

 tx_init(sky2);





 if (otherdev && netif_running(otherdev) &&
      (cap = pci_find_capability(hw->pdev, PCI_CAP_ID_PCIX))) {
   u16 cmd;

  cmd = sky2_pci_read16(hw, cap + PCI_X_CMD);
   cmd &= ~PCI_X_CMD_MAX_SPLIT;
   sky2_pci_write16(hw, cap + PCI_X_CMD, cmd);
 }

 sky2_mac_init(hw, port);


 ramsize = sky2_read8(hw, B2_E_0) * 4;
 if (ramsize > 0) {
  u32 rxspace;

  netdev_dbg(sky2->netdev, "ram buffer %dK\n", ramsize);
  if (ramsize < 16)
   rxspace = ramsize / 2;
  else
   rxspace = 8 + (2*(ramsize - 16))/3;

  sky2_ramset(hw, rxqaddr[port], 0, rxspace);
  sky2_ramset(hw, txqaddr[port], rxspace, ramsize - rxspace);


  sky2_write8(hw, RB_ADDR(port == 0 ? Q_XS1 : Q_XS2, RB_CTRL),
       RB_RST_SET);
 }

 sky2_qset(hw, txqaddr[port]);


 if (hw->chip_id == CHIP_ID_YUKON_EX && hw->chip_rev == CHIP_REV_YU_EX_B0)
  sky2_write32(hw, Q_ADDR(txqaddr[port], Q_TEST), F_TX_CHK_AUTO_OFF);


 if (hw->chip_id == CHIP_ID_YUKON_EC_U &&
     hw->chip_rev == CHIP_REV_YU_EC_U_A0)
  sky2_write16(hw, Q_ADDR(txqaddr[port], Q_AL), ECU_TXFF_LEV);

 sky2_prefetch_init(hw, txqaddr[port], sky2->tx_le_map,
      sky2->tx_ring_size - 1);

 sky2_vlan_mode(sky2->netdev, sky2->netdev->features);
 netdev_update_features(sky2->netdev);

 sky2_rx_start(sky2);
}
