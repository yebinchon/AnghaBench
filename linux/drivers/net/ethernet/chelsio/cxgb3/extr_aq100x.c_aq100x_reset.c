
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prtad; } ;
struct cphy {TYPE_1__ mdio; int adapter; } ;


 int CH_WARN (int ,char*,int ,int) ;
 int MDIO_MMD_VEND1 ;
 int t3_phy_reset (struct cphy*,int ,int) ;

__attribute__((used)) static int aq100x_reset(struct cphy *phy, int wait)
{




 int err = t3_phy_reset(phy, MDIO_MMD_VEND1, 3000);

 if (err)
  CH_WARN(phy->adapter, "PHY%d: reset failed (0x%x).\n",
   phy->mdio.prtad, err);

 return err;
}
