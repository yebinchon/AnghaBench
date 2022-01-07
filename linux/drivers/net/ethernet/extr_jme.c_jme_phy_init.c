
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int phy_id; } ;
struct jme_adapter {TYPE_1__ mii_if; int dev; } ;


 int jme_mdio_read (int ,int ,int) ;
 int jme_mdio_write (int ,int ,int,int) ;

__attribute__((used)) static inline void
jme_phy_init(struct jme_adapter *jme)
{
 u16 reg26;

 reg26 = jme_mdio_read(jme->dev, jme->mii_if.phy_id, 26);
 jme_mdio_write(jme->dev, jme->mii_if.phy_id, 26, reg26 | 0x1000);
}
