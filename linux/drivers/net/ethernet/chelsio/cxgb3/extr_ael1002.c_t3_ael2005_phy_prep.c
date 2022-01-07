
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdio_ops {int dummy; } ;
struct cphy {int dummy; } ;
struct adapter {int dummy; } ;


 int AEL_OPT_SETTINGS ;
 int MDIO_MMD_PMAPMD ;
 int SUPPORTED_10000baseT_Full ;
 int SUPPORTED_AUI ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_IRQ ;
 int ael2005_ops ;
 int cphy_init (struct cphy*,struct adapter*,int,int *,struct mdio_ops const*,int,char*) ;
 int msleep (int) ;
 int t3_mdio_change_bits (struct cphy*,int ,int ,int ,int) ;

int t3_ael2005_phy_prep(struct cphy *phy, struct adapter *adapter,
   int phy_addr, const struct mdio_ops *mdio_ops)
{
 cphy_init(phy, adapter, phy_addr, &ael2005_ops, mdio_ops,
    SUPPORTED_10000baseT_Full | SUPPORTED_AUI | SUPPORTED_FIBRE |
    SUPPORTED_IRQ, "10GBASE-R");
 msleep(125);
 return t3_mdio_change_bits(phy, MDIO_MMD_PMAPMD, AEL_OPT_SETTINGS, 0,
       1 << 5);
}
