
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int MDIO_DEVAD_NONE ;
 int cphy_mdio_read (struct cphy*,int ,int,unsigned int*) ;

__attribute__((used)) static inline int simple_mdio_read(struct cphy *cphy, int reg,
       unsigned int *valp)
{
 return cphy_mdio_read(cphy, MDIO_DEVAD_NONE, reg, valp);
}
