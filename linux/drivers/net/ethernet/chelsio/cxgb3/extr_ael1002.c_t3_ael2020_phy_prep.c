
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdio_ops {int dummy; } ;
struct cphy {int dummy; } ;
struct adapter {int dummy; } ;


 int SUPPORTED_10000baseT_Full ;
 int SUPPORTED_AUI ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_IRQ ;
 int ael2020_ops ;
 int ael2020_reset_regs ;
 int cphy_init (struct cphy*,struct adapter*,int,int *,struct mdio_ops const*,int,char*) ;
 int msleep (int) ;
 int set_phy_regs (struct cphy*,int ) ;

int t3_ael2020_phy_prep(struct cphy *phy, struct adapter *adapter, int phy_addr,
   const struct mdio_ops *mdio_ops)
{
 int err;

 cphy_init(phy, adapter, phy_addr, &ael2020_ops, mdio_ops,
    SUPPORTED_10000baseT_Full | SUPPORTED_AUI | SUPPORTED_FIBRE |
    SUPPORTED_IRQ, "10GBASE-R");
 msleep(125);

 err = set_phy_regs(phy, ael2020_reset_regs);
 if (err)
  return err;
 return 0;
}
