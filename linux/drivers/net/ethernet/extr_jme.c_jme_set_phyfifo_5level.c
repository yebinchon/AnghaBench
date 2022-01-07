
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phy_id; } ;
struct jme_adapter {TYPE_1__ mii_if; int dev; } ;


 int jme_mdio_write (int ,int ,int,int) ;

__attribute__((used)) static inline void
jme_set_phyfifo_5level(struct jme_adapter *jme)
{
 jme_mdio_write(jme->dev, jme->mii_if.phy_id, 27, 0x0004);
}
