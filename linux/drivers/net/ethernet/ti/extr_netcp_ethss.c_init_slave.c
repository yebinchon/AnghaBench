
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gbe_slave {scalar_t__ slave_num; scalar_t__ link_interface; int open; int port_regs; int emac_regs; int link_state; int mac_control; int port_num; int phy_node; struct device_node* node; } ;
struct gbe_priv {int switch_regs; int ss_version; int dev; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int GBE13_EMAC_OFFSET ;
 int GBE13_SLAVE_PORT2_OFFSET ;
 int GBE13_SLAVE_PORT_OFFSET ;
 int GBENU_EMAC_OFFSET ;
 int GBENU_SET_REG_OFS (struct gbe_slave*,int ,int ) ;
 int GBENU_SLAVE_PORT_OFFSET ;
 int GBE_DEF_10G_MAC_CONTROL ;
 int GBE_DEF_1G_MAC_CONTROL ;
 int GBE_SET_REG_OFS (struct gbe_slave*,int ,int ) ;
 scalar_t__ IS_SS_ID_MU (struct gbe_priv*) ;
 scalar_t__ IS_SS_ID_VER_14 (struct gbe_priv*) ;
 scalar_t__ IS_SS_ID_XGBE (struct gbe_priv*) ;
 int NETCP_LINK_STATE_INVALID ;
 scalar_t__ RGMII_LINK_MAC_PHY ;
 scalar_t__ SGMII_LINK_MAC_PHY ;
 int XGBE10_EMAC_OFFSET ;
 int XGBE10_SLAVE_PORT_OFFSET ;
 int XGBE_SET_REG_OFS (struct gbe_slave*,int ,int ) ;
 scalar_t__ XGMII_LINK_MAC_PHY ;
 int atomic_set (int *,int ) ;
 int dev_err (int ,char*,...) ;
 int dev_warn (int ,char*) ;
 int emac_regs ;
 int gbe_get_slave_port (struct gbe_priv*,scalar_t__) ;
 int init_slave_ts_ctl (struct gbe_slave*) ;
 int mac_control ;
 int of_parse_phandle (struct device_node*,char*,int ) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,scalar_t__*) ;
 int port_regs ;
 int port_vlan ;
 int rx_maxlen ;
 int rx_pri_map ;
 int sa_hi ;
 int sa_lo ;
 int soft_reset ;
 int ts_ctl ;
 int ts_ctl2 ;
 int ts_ctl_ltype2 ;
 int ts_seq_ltype ;
 int ts_vlan ;
 int tx_pri_map ;

__attribute__((used)) static int init_slave(struct gbe_priv *gbe_dev, struct gbe_slave *slave,
        struct device_node *node)
{
 int port_reg_num;
 u32 port_reg_ofs, emac_reg_ofs;
 u32 port_reg_blk_sz, emac_reg_blk_sz;

 if (of_property_read_u32(node, "slave-port", &slave->slave_num)) {
  dev_err(gbe_dev->dev, "missing slave-port parameter\n");
  return -EINVAL;
 }

 if (of_property_read_u32(node, "link-interface",
     &slave->link_interface)) {
  dev_warn(gbe_dev->dev,
    "missing link-interface value defaulting to 1G mac-phy link\n");
  slave->link_interface = SGMII_LINK_MAC_PHY;
 }

 slave->node = node;
 slave->open = 0;
 if ((slave->link_interface == SGMII_LINK_MAC_PHY) ||
     (slave->link_interface == RGMII_LINK_MAC_PHY) ||
     (slave->link_interface == XGMII_LINK_MAC_PHY))
  slave->phy_node = of_parse_phandle(node, "phy-handle", 0);
 slave->port_num = gbe_get_slave_port(gbe_dev, slave->slave_num);

 if (slave->link_interface >= XGMII_LINK_MAC_PHY)
  slave->mac_control = GBE_DEF_10G_MAC_CONTROL;
 else
  slave->mac_control = GBE_DEF_1G_MAC_CONTROL;


 port_reg_num = slave->slave_num;
 if (IS_SS_ID_VER_14(gbe_dev)) {
  if (slave->slave_num > 1) {
   port_reg_ofs = GBE13_SLAVE_PORT2_OFFSET;
   port_reg_num -= 2;
  } else {
   port_reg_ofs = GBE13_SLAVE_PORT_OFFSET;
  }
  emac_reg_ofs = GBE13_EMAC_OFFSET;
  port_reg_blk_sz = 0x30;
  emac_reg_blk_sz = 0x40;
 } else if (IS_SS_ID_MU(gbe_dev)) {
  port_reg_ofs = GBENU_SLAVE_PORT_OFFSET;
  emac_reg_ofs = GBENU_EMAC_OFFSET;
  port_reg_blk_sz = 0x1000;
  emac_reg_blk_sz = 0x1000;
 } else if (IS_SS_ID_XGBE(gbe_dev)) {
  port_reg_ofs = XGBE10_SLAVE_PORT_OFFSET;
  emac_reg_ofs = XGBE10_EMAC_OFFSET;
  port_reg_blk_sz = 0x30;
  emac_reg_blk_sz = 0x40;
 } else {
  dev_err(gbe_dev->dev, "unknown ethss(0x%x)\n",
   gbe_dev->ss_version);
  return -EINVAL;
 }

 slave->port_regs = gbe_dev->switch_regs + port_reg_ofs +
    (port_reg_blk_sz * port_reg_num);
 slave->emac_regs = gbe_dev->switch_regs + emac_reg_ofs +
    (emac_reg_blk_sz * slave->slave_num);

 if (IS_SS_ID_VER_14(gbe_dev)) {

  GBE_SET_REG_OFS(slave, port_regs, port_vlan);
  GBE_SET_REG_OFS(slave, port_regs, tx_pri_map);
  GBE_SET_REG_OFS(slave, port_regs, sa_lo);
  GBE_SET_REG_OFS(slave, port_regs, sa_hi);
  GBE_SET_REG_OFS(slave, port_regs, ts_ctl);
  GBE_SET_REG_OFS(slave, port_regs, ts_seq_ltype);
  GBE_SET_REG_OFS(slave, port_regs, ts_vlan);
  GBE_SET_REG_OFS(slave, port_regs, ts_ctl_ltype2);
  GBE_SET_REG_OFS(slave, port_regs, ts_ctl2);


  GBE_SET_REG_OFS(slave, emac_regs, mac_control);
  GBE_SET_REG_OFS(slave, emac_regs, soft_reset);
  GBE_SET_REG_OFS(slave, emac_regs, rx_maxlen);

 } else if (IS_SS_ID_MU(gbe_dev)) {

  GBENU_SET_REG_OFS(slave, port_regs, port_vlan);
  GBENU_SET_REG_OFS(slave, port_regs, tx_pri_map);
  GBENU_SET_REG_OFS(slave, port_regs, rx_pri_map);
  GBENU_SET_REG_OFS(slave, port_regs, sa_lo);
  GBENU_SET_REG_OFS(slave, port_regs, sa_hi);
  GBENU_SET_REG_OFS(slave, port_regs, ts_ctl);
  GBENU_SET_REG_OFS(slave, port_regs, ts_seq_ltype);
  GBENU_SET_REG_OFS(slave, port_regs, ts_vlan);
  GBENU_SET_REG_OFS(slave, port_regs, ts_ctl_ltype2);
  GBENU_SET_REG_OFS(slave, port_regs, ts_ctl2);
  GBENU_SET_REG_OFS(slave, port_regs, rx_maxlen);


  GBENU_SET_REG_OFS(slave, emac_regs, mac_control);
  GBENU_SET_REG_OFS(slave, emac_regs, soft_reset);

 } else if (IS_SS_ID_XGBE(gbe_dev)) {

  XGBE_SET_REG_OFS(slave, port_regs, port_vlan);
  XGBE_SET_REG_OFS(slave, port_regs, tx_pri_map);
  XGBE_SET_REG_OFS(slave, port_regs, sa_lo);
  XGBE_SET_REG_OFS(slave, port_regs, sa_hi);
  XGBE_SET_REG_OFS(slave, port_regs, ts_ctl);
  XGBE_SET_REG_OFS(slave, port_regs, ts_seq_ltype);
  XGBE_SET_REG_OFS(slave, port_regs, ts_vlan);
  XGBE_SET_REG_OFS(slave, port_regs, ts_ctl_ltype2);
  XGBE_SET_REG_OFS(slave, port_regs, ts_ctl2);


  XGBE_SET_REG_OFS(slave, emac_regs, mac_control);
  XGBE_SET_REG_OFS(slave, emac_regs, soft_reset);
  XGBE_SET_REG_OFS(slave, emac_regs, rx_maxlen);
 }

 atomic_set(&slave->link_state, NETCP_LINK_STATE_INVALID);

 init_slave_ts_ctl(slave);
 return 0;
}
