
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MDIO_DATA_WRITE0 ;
 int MDIO_DATA_WRITE1 ;
 int MDIO_ENB_IN ;
 int MDIO_SHIFT_CLK ;
 unsigned int Wn4_PhysicalMgmt ;
 int mdio_sync (unsigned int,int) ;
 scalar_t__ mii_preamble_required ;
 int outw (int,unsigned int) ;

__attribute__((used)) static void mdio_write(unsigned int ioaddr, int phy_id, int location, int value)
{
 int write_cmd = 0x50020000 | (phy_id << 23) | (location << 18) | value;
 unsigned int mdio_addr = ioaddr + Wn4_PhysicalMgmt;
 int i;

 if (mii_preamble_required)
  mdio_sync(ioaddr, 32);


 for (i = 31; i >= 0; i--) {
  int dataval = (write_cmd&(1<<i)) ? MDIO_DATA_WRITE1 : MDIO_DATA_WRITE0;
  outw(dataval, mdio_addr);
  outw(dataval | MDIO_SHIFT_CLK, mdio_addr);
 }

 for (i = 1; i >= 0; i--) {
  outw(MDIO_ENB_IN, mdio_addr);
  outw(MDIO_ENB_IN | MDIO_SHIFT_CLK, mdio_addr);
 }
}
