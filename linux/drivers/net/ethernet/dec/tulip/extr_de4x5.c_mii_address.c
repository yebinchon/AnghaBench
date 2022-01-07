
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_char ;


 int MII_MWR ;
 int MII_WR ;
 int mii_swap (int,int) ;
 int sendto_mii (int,int,int ) ;

__attribute__((used)) static void
mii_address(u_char addr, u_long ioaddr)
{
    int i;

    addr = mii_swap(addr, 5);
    for (i=0; i<5; i++) {
 sendto_mii(MII_MWR | MII_WR, addr, ioaddr);
 addr >>= 1;
    }
}
