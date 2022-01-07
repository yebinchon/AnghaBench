
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int AQ_IFLAG_GLOBAL ;
 int MDIO_MMD_PMAPMD ;
 int MDIO_MMD_VEND1 ;
 int MDIO_STAT1 ;
 int t3_mdio_read (struct cphy*,int ,int ,unsigned int*) ;

__attribute__((used)) static int aq100x_intr_clear(struct cphy *phy)
{
 unsigned int v;

 t3_mdio_read(phy, MDIO_MMD_VEND1, AQ_IFLAG_GLOBAL, &v);
 t3_mdio_read(phy, MDIO_MMD_PMAPMD, MDIO_STAT1, &v);

 return 0;
}
