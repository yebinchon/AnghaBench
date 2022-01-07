
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct net_device {unsigned int base_addr; } ;


 int MDIO_DATA_WRITE0 ;
 int MDIO_DATA_WRITE1 ;
 int MDIO_SHIFT_CLK ;
 unsigned int MGMT ;
 int mdio_sync (unsigned int) ;
 int outb (int,unsigned int) ;

__attribute__((used)) static void mdio_write(struct net_device *dev, int phy_id, int loc, int value)
{
    unsigned int addr = dev->base_addr + MGMT;
    u_int cmd = (0x05<<28)|(phy_id<<23)|(loc<<18)|(1<<17)|value;
    int i;

    mdio_sync(addr);
    for (i = 31; i >= 0; i--) {
 int dat = (cmd&(1<<i)) ? MDIO_DATA_WRITE1 : MDIO_DATA_WRITE0;
 outb(dat, addr);
 outb(dat | MDIO_SHIFT_CLK, addr);
    }
    for (i = 1; i >= 0; i--) {
 outb(0, addr);
 outb(MDIO_SHIFT_CLK, addr);
    }
}
