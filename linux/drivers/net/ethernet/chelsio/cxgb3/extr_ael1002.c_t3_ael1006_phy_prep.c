
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
 int ael1006_ops ;
 int ael100x_txon (struct cphy*) ;
 int cphy_init (struct cphy*,struct adapter*,int,int *,struct mdio_ops const*,int,char*) ;

int t3_ael1006_phy_prep(struct cphy *phy, struct adapter *adapter,
        int phy_addr, const struct mdio_ops *mdio_ops)
{
 cphy_init(phy, adapter, phy_addr, &ael1006_ops, mdio_ops,
    SUPPORTED_10000baseT_Full | SUPPORTED_AUI | SUPPORTED_FIBRE,
     "10GBASE-SR");
 ael100x_txon(phy);
 return 0;
}
