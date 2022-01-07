
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gbe_priv {scalar_t__ ale_ports; int ale; int host_port; scalar_t__ enable_ale; } ;


 int ALE_BYPASS ;
 int ALE_NO_PORT_VLAN ;
 int ALE_PORT_STATE ;
 int ALE_PORT_STATE_FORWARD ;
 int ALE_PORT_UNKNOWN_MCAST_FLOOD ;
 int ALE_PORT_UNKNOWN_REG_MCAST_FLOOD ;
 int ALE_PORT_UNKNOWN_VLAN_MEMBER ;
 int ALE_PORT_UNTAGGED_EGRESS ;
 int GBE_PORT_MASK (scalar_t__) ;
 int GBE_REG_ADDR (struct gbe_priv*,int ,int ) ;
 int HOST_TX_PRI_MAP_DEFAULT ;
 scalar_t__ IS_SS_ID_NU (struct gbe_priv*) ;
 scalar_t__ IS_SS_ID_XGBE (struct gbe_priv*) ;
 int NETCP_MAX_FRAME_SIZE ;
 int cpsw_ale_control_set (int ,int ,int ,int) ;
 int cpsw_ale_start (int ) ;
 int host_port_regs ;
 int rx_maxlen ;
 int tx_pri_map ;
 int writel (int ,int ) ;

__attribute__((used)) static void gbe_init_host_port(struct gbe_priv *priv)
{
 int bypass_en = 1;


 if (IS_SS_ID_NU(priv) || IS_SS_ID_XGBE(priv))
  writel(HOST_TX_PRI_MAP_DEFAULT,
         GBE_REG_ADDR(priv, host_port_regs, tx_pri_map));


 writel(NETCP_MAX_FRAME_SIZE, GBE_REG_ADDR(priv, host_port_regs,
        rx_maxlen));

 cpsw_ale_start(priv->ale);

 if (priv->enable_ale)
  bypass_en = 0;

 cpsw_ale_control_set(priv->ale, 0, ALE_BYPASS, bypass_en);

 cpsw_ale_control_set(priv->ale, 0, ALE_NO_PORT_VLAN, 1);

 cpsw_ale_control_set(priv->ale, priv->host_port,
        ALE_PORT_STATE, ALE_PORT_STATE_FORWARD);

 cpsw_ale_control_set(priv->ale, 0,
        ALE_PORT_UNKNOWN_VLAN_MEMBER,
        GBE_PORT_MASK(priv->ale_ports));

 cpsw_ale_control_set(priv->ale, 0,
        ALE_PORT_UNKNOWN_MCAST_FLOOD,
        GBE_PORT_MASK(priv->ale_ports - 1));

 cpsw_ale_control_set(priv->ale, 0,
        ALE_PORT_UNKNOWN_REG_MCAST_FLOOD,
        GBE_PORT_MASK(priv->ale_ports));

 cpsw_ale_control_set(priv->ale, 0,
        ALE_PORT_UNTAGGED_EGRESS,
        GBE_PORT_MASK(priv->ale_ports));
}
