
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sky2_port {size_t port; unsigned int rx_pending; struct rx_ring_info* rx_ring; TYPE_1__* netdev; int rx_le_map; scalar_t__ rx_next; scalar_t__ rx_put; struct sky2_hw* hw; } ;
struct sky2_hw {scalar_t__ chip_id; scalar_t__ chip_rev; int flags; int pdev; } ;
struct rx_ring_info {int dummy; } ;
struct TYPE_2__ {int features; } ;


 int BMU_WM_PEX ;
 scalar_t__ CHIP_ID_YUKON_EC_U ;
 scalar_t__ CHIP_ID_YUKON_EX ;
 scalar_t__ CHIP_ID_YUKON_SUPR ;
 scalar_t__ CHIP_REV_YU_EC_U_A0 ;
 int F_M_RX_RAM_DIS ;
 int Q_ADDR (unsigned int,int ) ;
 int Q_TEST ;
 int Q_WM ;
 int RX_GMF_CTRL_T ;
 int RX_GMF_FL_CTRL ;
 int RX_GMF_TR_THR ;
 unsigned int RX_IPV6_DA_MOB_ENA ;
 unsigned int RX_IPV6_SA_MOB_ENA ;
 scalar_t__ RX_LE_SIZE ;
 int RX_MACSEC_FLUSH_OFF ;
 int RX_TRUNC_OFF ;
 int RX_TRUNC_ON ;
 int SKY2_HW_NEW_LE ;
 int SKY2_HW_RSS_BROKEN ;
 int SK_REG (size_t,int ) ;
 int TBMU_TEST_HOME_ADD_FIX_EN ;
 int TBMU_TEST_ROUTING_ADD_FIX_EN ;
 scalar_t__ pci_is_pcie (int ) ;
 int rx_set_checksum (struct sky2_port*) ;
 int rx_set_rss (TYPE_1__*,int ) ;
 unsigned int* rxqaddr ;
 unsigned int sky2_get_rx_threshold (struct sky2_port*) ;
 int sky2_prefetch_init (struct sky2_hw*,unsigned int,int ,scalar_t__) ;
 int sky2_qset (struct sky2_hw*,unsigned int) ;
 int sky2_rx_submit (struct sky2_port*,struct rx_ring_info*) ;
 int sky2_rx_update (struct sky2_port*,unsigned int) ;
 int sky2_write16 (struct sky2_hw*,int ,unsigned int) ;
 int sky2_write32 (struct sky2_hw*,int ,int) ;
 unsigned int* txqaddr ;

__attribute__((used)) static void sky2_rx_start(struct sky2_port *sky2)
{
 struct sky2_hw *hw = sky2->hw;
 struct rx_ring_info *re;
 unsigned rxq = rxqaddr[sky2->port];
 unsigned i, thresh;

 sky2->rx_put = sky2->rx_next = 0;
 sky2_qset(hw, rxq);


 if (pci_is_pcie(hw->pdev))
  sky2_write32(hw, Q_ADDR(rxq, Q_WM), BMU_WM_PEX);



 if (hw->chip_id == CHIP_ID_YUKON_EC_U &&
     hw->chip_rev > CHIP_REV_YU_EC_U_A0)
  sky2_write32(hw, Q_ADDR(rxq, Q_TEST), F_M_RX_RAM_DIS);

 sky2_prefetch_init(hw, rxq, sky2->rx_le_map, RX_LE_SIZE - 1);

 if (!(hw->flags & SKY2_HW_NEW_LE))
  rx_set_checksum(sky2);

 if (!(hw->flags & SKY2_HW_RSS_BROKEN))
  rx_set_rss(sky2->netdev, sky2->netdev->features);


 for (i = 0; i < sky2->rx_pending; i++) {
  re = sky2->rx_ring + i;
  sky2_rx_submit(sky2, re);
 }







 thresh = sky2_get_rx_threshold(sky2);
 if (thresh > 0x1ff)
  sky2_write32(hw, SK_REG(sky2->port, RX_GMF_CTRL_T), RX_TRUNC_OFF);
 else {
  sky2_write16(hw, SK_REG(sky2->port, RX_GMF_TR_THR), thresh);
  sky2_write32(hw, SK_REG(sky2->port, RX_GMF_CTRL_T), RX_TRUNC_ON);
 }


 sky2_rx_update(sky2, rxq);

 if (hw->chip_id == CHIP_ID_YUKON_EX ||
     hw->chip_id == CHIP_ID_YUKON_SUPR) {







  sky2_write32(hw, SK_REG(sky2->port, RX_GMF_CTRL_T), RX_MACSEC_FLUSH_OFF);
 }

 if (hw->chip_id >= CHIP_ID_YUKON_SUPR) {

  sky2_write16(hw, SK_REG(sky2->port, RX_GMF_FL_CTRL),
        RX_IPV6_SA_MOB_ENA | RX_IPV6_DA_MOB_ENA);


  sky2_write32(hw, Q_ADDR(txqaddr[sky2->port], Q_TEST),
        TBMU_TEST_HOME_ADD_FIX_EN | TBMU_TEST_ROUTING_ADD_FIX_EN);
 }
}
