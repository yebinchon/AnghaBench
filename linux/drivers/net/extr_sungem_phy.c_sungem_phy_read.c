
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_phy {int (* mdio_read ) (int ,int ,int) ;int mii_id; int dev; } ;


 int stub1 (int ,int ,int) ;

__attribute__((used)) static inline int sungem_phy_read(struct mii_phy* phy, int reg)
{
 return phy->mdio_read(phy->dev, phy->mii_id, reg);
}
