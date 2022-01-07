
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct hwrm_port_phy_cfg_input {int flags; int tx_lpi_timer; int eee_link_speed_mask; } ;
struct ethtool_eee {int tx_lpi_timer; int advertised; scalar_t__ tx_lpi_enabled; scalar_t__ eee_enabled; } ;
struct bnxt {struct ethtool_eee eee; } ;


 int PORT_PHY_CFG_REQ_FLAGS_EEE_DISABLE ;
 int PORT_PHY_CFG_REQ_FLAGS_EEE_ENABLE ;
 int PORT_PHY_CFG_REQ_FLAGS_EEE_TX_LPI_DISABLE ;
 int PORT_PHY_CFG_REQ_FLAGS_EEE_TX_LPI_ENABLE ;
 int bnxt_get_fw_auto_link_speeds (int ) ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void bnxt_hwrm_set_eee(struct bnxt *bp,
         struct hwrm_port_phy_cfg_input *req)
{
 struct ethtool_eee *eee = &bp->eee;

 if (eee->eee_enabled) {
  u16 eee_speeds;
  u32 flags = PORT_PHY_CFG_REQ_FLAGS_EEE_ENABLE;

  if (eee->tx_lpi_enabled)
   flags |= PORT_PHY_CFG_REQ_FLAGS_EEE_TX_LPI_ENABLE;
  else
   flags |= PORT_PHY_CFG_REQ_FLAGS_EEE_TX_LPI_DISABLE;

  req->flags |= cpu_to_le32(flags);
  eee_speeds = bnxt_get_fw_auto_link_speeds(eee->advertised);
  req->eee_link_speed_mask = cpu_to_le16(eee_speeds);
  req->tx_lpi_timer = cpu_to_le32(eee->tx_lpi_timer);
 } else {
  req->flags |= cpu_to_le32(PORT_PHY_CFG_REQ_FLAGS_EEE_DISABLE);
 }
}
