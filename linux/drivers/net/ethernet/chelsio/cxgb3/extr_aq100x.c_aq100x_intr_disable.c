
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int AQ_IMASK_GLOBAL ;
 int MDIO_MMD_VEND1 ;
 int t3_mdio_write (struct cphy*,int ,int ,int ) ;

__attribute__((used)) static int aq100x_intr_disable(struct cphy *phy)
{
 return t3_mdio_write(phy, MDIO_MMD_VEND1, AQ_IMASK_GLOBAL, 0);
}
