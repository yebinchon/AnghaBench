
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int MDIO_MMD_PCS ;
 int cphy_mdio_write (struct cphy*,int ,int,int) ;

__attribute__((used)) static int led_init(struct cphy *cphy)
{




 cphy_mdio_write(cphy, MDIO_MMD_PCS, 0x8304, 0xdddd);
 return 0;
}
