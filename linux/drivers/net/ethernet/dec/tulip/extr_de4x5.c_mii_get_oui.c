
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_char ;


 int MII_ID0 ;
 int MII_ID1 ;
 int mii_rd (int ,int ,int ) ;

__attribute__((used)) static int
mii_get_oui(u_char phyaddr, u_long ioaddr)
{






    int r2, r3;


    r2 = mii_rd(MII_ID0, phyaddr, ioaddr);
    r3 = mii_rd(MII_ID1, phyaddr, ioaddr);
    return r2;
}
