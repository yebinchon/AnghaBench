
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b44 {int dummy; } ;


 int B44_EMAC_ISTAT ;
 int B44_MDIO_DATA ;
 int EMAC_INT_MII ;
 int MDIO_DATA_DATA ;
 int MDIO_DATA_OP_SHIFT ;
 int MDIO_DATA_PMD_SHIFT ;
 int MDIO_DATA_RA_SHIFT ;
 int MDIO_DATA_SB_START ;
 int MDIO_DATA_TA_SHIFT ;
 int MDIO_OP_WRITE ;
 int MDIO_TA_VALID ;
 int b44_wait_bit (struct b44*,int ,int,int,int ) ;
 int bw32 (struct b44*,int ,int) ;

__attribute__((used)) static int __b44_writephy(struct b44 *bp, int phy_addr, int reg, u32 val)
{
 bw32(bp, B44_EMAC_ISTAT, EMAC_INT_MII);
 bw32(bp, B44_MDIO_DATA, (MDIO_DATA_SB_START |
        (MDIO_OP_WRITE << MDIO_DATA_OP_SHIFT) |
        (phy_addr << MDIO_DATA_PMD_SHIFT) |
        (reg << MDIO_DATA_RA_SHIFT) |
        (MDIO_TA_VALID << MDIO_DATA_TA_SHIFT) |
        (val & MDIO_DATA_DATA)));
 return b44_wait_bit(bp, B44_EMAC_ISTAT, EMAC_INT_MII, 100, 0);
}
