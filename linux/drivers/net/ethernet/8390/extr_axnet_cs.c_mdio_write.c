
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int MDIO_DATA_WRITE0 ;
 int MDIO_DATA_WRITE1 ;
 int MDIO_ENB_IN ;
 int MDIO_SHIFT_CLK ;
 int mdio_sync (unsigned int) ;
 int outb_p (int,unsigned int) ;

__attribute__((used)) static void mdio_write(unsigned int addr, int phy_id, int loc, int value)
{
    u_int cmd = (0x05<<28)|(phy_id<<23)|(loc<<18)|(1<<17)|value;
    int i;

    mdio_sync(addr);
    for (i = 31; i >= 0; i--) {
 int dat = (cmd&(1<<i)) ? MDIO_DATA_WRITE1 : MDIO_DATA_WRITE0;
 outb_p(dat, addr);
 outb_p(dat | MDIO_SHIFT_CLK, addr);
    }
    for (i = 1; i >= 0; i--) {
 outb_p(MDIO_ENB_IN, addr);
 outb_p(MDIO_ENB_IN | MDIO_SHIFT_CLK, addr);
    }
}
