
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mii_bus {int dummy; } ;


 int LTQ_ETOP_MDIO ;
 int MDIO_ADDR_MASK ;
 int MDIO_ADDR_OFFSET ;
 int MDIO_READ ;
 int MDIO_REG_MASK ;
 int MDIO_REG_OFFSET ;
 int MDIO_REQUEST ;
 int MDIO_VAL_MASK ;
 int ltq_etop_r32 (int ) ;
 int ltq_etop_w32 (int,int ) ;

__attribute__((used)) static int
ltq_etop_mdio_rd(struct mii_bus *bus, int phy_addr, int phy_reg)
{
 u32 val = MDIO_REQUEST | MDIO_READ |
  ((phy_addr & MDIO_ADDR_MASK) << MDIO_ADDR_OFFSET) |
  ((phy_reg & MDIO_REG_MASK) << MDIO_REG_OFFSET);

 while (ltq_etop_r32(LTQ_ETOP_MDIO) & MDIO_REQUEST)
  ;
 ltq_etop_w32(val, LTQ_ETOP_MDIO);
 while (ltq_etop_r32(LTQ_ETOP_MDIO) & MDIO_REQUEST)
  ;
 val = ltq_etop_r32(LTQ_ETOP_MDIO) & MDIO_VAL_MASK;
 return val;
}
