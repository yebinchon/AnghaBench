
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prtad; } ;
struct cphy {TYPE_1__ mdio; } ;


 int MDIO_CTRL1 ;
 int MDIO_CTRL1_LPOWER ;
 int MDIO_MMD_PMAPMD ;
 int mdio_set_flag (TYPE_1__*,int ,int ,int ,int ,int) ;

__attribute__((used)) static int aq100x_power_down(struct cphy *phy, int off)
{
 return mdio_set_flag(&phy->mdio, phy->mdio.prtad,
        MDIO_MMD_PMAPMD, MDIO_CTRL1,
        MDIO_CTRL1_LPOWER, off);
}
