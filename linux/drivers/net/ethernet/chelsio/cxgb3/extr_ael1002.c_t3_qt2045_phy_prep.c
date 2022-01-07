
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdio_ops {int dummy; } ;
struct TYPE_2__ {int prtad; } ;
struct cphy {TYPE_1__ mdio; } ;
struct adapter {int dummy; } ;


 int MDIO_MMD_PMAPMD ;
 int MDIO_STAT1 ;
 int SUPPORTED_10000baseT_Full ;
 int SUPPORTED_AUI ;
 int SUPPORTED_TP ;
 int cphy_init (struct cphy*,struct adapter*,int,int *,struct mdio_ops const*,int,char*) ;
 int qt2045_ops ;
 int t3_mdio_read (struct cphy*,int ,int ,unsigned int*) ;

int t3_qt2045_phy_prep(struct cphy *phy, struct adapter *adapter,
         int phy_addr, const struct mdio_ops *mdio_ops)
{
 unsigned int stat;

 cphy_init(phy, adapter, phy_addr, &qt2045_ops, mdio_ops,
    SUPPORTED_10000baseT_Full | SUPPORTED_AUI | SUPPORTED_TP,
    "10GBASE-CX4");





 if (!phy_addr &&
     !t3_mdio_read(phy, MDIO_MMD_PMAPMD, MDIO_STAT1, &stat) &&
     stat == 0xffff)
  phy->mdio.prtad = 1;
 return 0;
}
