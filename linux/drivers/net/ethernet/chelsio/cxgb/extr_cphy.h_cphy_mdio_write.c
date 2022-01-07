
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* mdio_write ) (int ,int ,int,int,unsigned int) ;int prtad; int dev; } ;
struct cphy {TYPE_1__ mdio; } ;


 int stub1 (int ,int ,int,int,unsigned int) ;

__attribute__((used)) static inline int cphy_mdio_write(struct cphy *cphy, int mmd, int reg,
      unsigned int val)
{
 return cphy->mdio.mdio_write(cphy->mdio.dev, cphy->mdio.prtad, mmd,
         reg, val);
}
