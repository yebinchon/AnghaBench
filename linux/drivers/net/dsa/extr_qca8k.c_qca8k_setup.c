
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qca8k_priv {TYPE_2__* port_sts; int regmap; int reg_mutex; } ;
struct dsa_switch {TYPE_1__* ports; int dev; scalar_t__ priv; } ;
struct TYPE_4__ {int enabled; } ;
struct TYPE_3__ {int dn; } ;


 int BIT (size_t) ;
 int EINVAL ;
 scalar_t__ IS_ERR (int ) ;
 size_t QCA8K_CPU_PORT ;
 int QCA8K_EGRESS_VLAN (int) ;
 int QCA8K_GLOBAL_FW_CTRL0_CPU_PORT_EN ;
 int QCA8K_GLOBAL_FW_CTRL1_BC_DP_S ;
 int QCA8K_GLOBAL_FW_CTRL1_IGMP_DP_S ;
 int QCA8K_GLOBAL_FW_CTRL1_MC_DP_S ;
 int QCA8K_GLOBAL_FW_CTRL1_UC_DP_S ;
 int QCA8K_NUM_PORTS ;
 int QCA8K_PORT_HDR_CTRL_ALL ;
 int QCA8K_PORT_HDR_CTRL_RX_S ;
 int QCA8K_PORT_HDR_CTRL_TX_S ;
 int QCA8K_PORT_LOOKUP_CTRL (int) ;
 int QCA8K_PORT_LOOKUP_LEARN ;
 int QCA8K_PORT_LOOKUP_MEMBER ;
 int QCA8K_PORT_STATUS_DUPLEX ;
 int QCA8K_PORT_STATUS_RXFLOW ;
 int QCA8K_PORT_STATUS_SPEED_1000 ;
 int QCA8K_PORT_STATUS_TXFLOW ;
 int QCA8K_PORT_VLAN_CVID (int) ;
 int QCA8K_PORT_VLAN_SVID (int) ;
 int QCA8K_REG_GLOBAL_FW_CTRL0 ;
 int QCA8K_REG_GLOBAL_FW_CTRL1 ;
 int QCA8K_REG_PORT_HDR_CTRL (size_t) ;
 int QCA8K_REG_PORT_STATUS (size_t) ;
 int QCA8K_REG_PORT_VLAN_CTRL0 (int) ;
 int devm_regmap_init (int ,int *,struct qca8k_priv*,int *) ;
 scalar_t__ dsa_is_cpu_port (struct dsa_switch*,int) ;
 scalar_t__ dsa_is_user_port (struct dsa_switch*,int) ;
 int dsa_user_ports (struct dsa_switch*) ;
 int mutex_init (int *) ;
 int of_get_phy_mode (int ) ;
 int pr_err (char*) ;
 int pr_warn (char*) ;
 int qca8k_fdb_flush (struct qca8k_priv*) ;
 int qca8k_mib_init (struct qca8k_priv*) ;
 int qca8k_port_set_status (struct qca8k_priv*,int,int) ;
 int qca8k_reg_set (struct qca8k_priv*,int ,int ) ;
 int qca8k_regmap_config ;
 int qca8k_rmw (struct qca8k_priv*,int ,int,int) ;
 int qca8k_set_pad_ctrl (struct qca8k_priv*,size_t,int) ;
 int qca8k_setup_mdio_bus (struct qca8k_priv*) ;
 int qca8k_write (struct qca8k_priv*,int ,int) ;

__attribute__((used)) static int
qca8k_setup(struct dsa_switch *ds)
{
 struct qca8k_priv *priv = (struct qca8k_priv *)ds->priv;
 int ret, i, phy_mode = -1;
 u32 mask;


 if (!dsa_is_cpu_port(ds, 0)) {
  pr_err("port 0 is not the CPU port\n");
  return -EINVAL;
 }

 mutex_init(&priv->reg_mutex);


 priv->regmap = devm_regmap_init(ds->dev, ((void*)0), priv,
     &qca8k_regmap_config);
 if (IS_ERR(priv->regmap))
  pr_warn("regmap initialization failed");

 ret = qca8k_setup_mdio_bus(priv);
 if (ret)
  return ret;


 phy_mode = of_get_phy_mode(ds->ports[QCA8K_CPU_PORT].dn);
 if (phy_mode < 0) {
  pr_err("Can't find phy-mode for master device\n");
  return phy_mode;
 }
 ret = qca8k_set_pad_ctrl(priv, QCA8K_CPU_PORT, phy_mode);
 if (ret < 0)
  return ret;


 mask = QCA8K_PORT_STATUS_SPEED_1000 | QCA8K_PORT_STATUS_TXFLOW |
        QCA8K_PORT_STATUS_RXFLOW | QCA8K_PORT_STATUS_DUPLEX;
 qca8k_write(priv, QCA8K_REG_PORT_STATUS(QCA8K_CPU_PORT), mask);
 qca8k_reg_set(priv, QCA8K_REG_GLOBAL_FW_CTRL0,
        QCA8K_GLOBAL_FW_CTRL0_CPU_PORT_EN);
 qca8k_port_set_status(priv, QCA8K_CPU_PORT, 1);
 priv->port_sts[QCA8K_CPU_PORT].enabled = 1;


 qca8k_mib_init(priv);


 qca8k_write(priv, QCA8K_REG_PORT_HDR_CTRL(QCA8K_CPU_PORT),
      QCA8K_PORT_HDR_CTRL_ALL << QCA8K_PORT_HDR_CTRL_TX_S |
      QCA8K_PORT_HDR_CTRL_ALL << QCA8K_PORT_HDR_CTRL_RX_S);


 for (i = 0; i < QCA8K_NUM_PORTS; i++)
  qca8k_rmw(priv, QCA8K_PORT_LOOKUP_CTRL(i),
     QCA8K_PORT_LOOKUP_MEMBER, 0);


 for (i = 1; i < QCA8K_NUM_PORTS; i++)
  if (dsa_is_user_port(ds, i))
   qca8k_port_set_status(priv, i, 0);


 qca8k_write(priv, QCA8K_REG_GLOBAL_FW_CTRL1,
      BIT(0) << QCA8K_GLOBAL_FW_CTRL1_IGMP_DP_S |
      BIT(0) << QCA8K_GLOBAL_FW_CTRL1_BC_DP_S |
      BIT(0) << QCA8K_GLOBAL_FW_CTRL1_MC_DP_S |
      BIT(0) << QCA8K_GLOBAL_FW_CTRL1_UC_DP_S);


 for (i = 0; i < QCA8K_NUM_PORTS; i++) {

  if (dsa_is_cpu_port(ds, i)) {
   qca8k_rmw(priv, QCA8K_PORT_LOOKUP_CTRL(QCA8K_CPU_PORT),
      QCA8K_PORT_LOOKUP_MEMBER, dsa_user_ports(ds));
  }


  if (dsa_is_user_port(ds, i)) {
   int shift = 16 * (i % 2);

   qca8k_rmw(priv, QCA8K_PORT_LOOKUP_CTRL(i),
      QCA8K_PORT_LOOKUP_MEMBER,
      BIT(QCA8K_CPU_PORT));


   qca8k_reg_set(priv, QCA8K_PORT_LOOKUP_CTRL(i),
          QCA8K_PORT_LOOKUP_LEARN);




   qca8k_rmw(priv, QCA8K_EGRESS_VLAN(i),
      0xffff << shift, 1 << shift);
   qca8k_write(priv, QCA8K_REG_PORT_VLAN_CTRL0(i),
        QCA8K_PORT_VLAN_CVID(1) |
        QCA8K_PORT_VLAN_SVID(1));
  }
 }


 qca8k_fdb_flush(priv);

 return 0;
}
