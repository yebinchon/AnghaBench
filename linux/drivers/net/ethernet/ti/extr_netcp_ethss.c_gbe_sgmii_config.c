
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gbe_slave {int link_interface; int slave_num; } ;
struct gbe_priv {int dummy; } ;


 int SGMII_BASE (struct gbe_priv*,int ) ;
 scalar_t__ SLAVE_LINK_IS_XGMII (struct gbe_slave*) ;
 int netcp_sgmii_config (int ,int ,int ) ;
 int netcp_sgmii_reset (int ,int ) ;

__attribute__((used)) static void gbe_sgmii_config(struct gbe_priv *priv, struct gbe_slave *slave)
{
 if (SLAVE_LINK_IS_XGMII(slave))
  return;

 netcp_sgmii_reset(SGMII_BASE(priv, slave->slave_num), slave->slave_num);
 netcp_sgmii_config(SGMII_BASE(priv, slave->slave_num), slave->slave_num,
      slave->link_interface);
}
