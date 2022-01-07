
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct et131x_adapter {int dummy; } ;


 int et131x_mii_read (struct et131x_adapter*,int,int*) ;

__attribute__((used)) static void et1310_phy_read_mii_bit(struct et131x_adapter *adapter,
        u16 regnum,
        u16 bitnum,
        u8 *value)
{
 u16 reg;
 u16 mask = 1 << bitnum;

 et131x_mii_read(adapter, regnum, &reg);

 *value = (reg & mask) >> bitnum;
}
