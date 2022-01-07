
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int s32 ;


 int MII_MRD ;
 int MII_RD ;
 int getfrom_mii (int,int ) ;

__attribute__((used)) static int
mii_rdata(u_long ioaddr)
{
    int i;
    s32 tmp = 0;

    for (i=0; i<16; i++) {
 tmp <<= 1;
 tmp |= getfrom_mii(MII_MRD | MII_RD, ioaddr);
    }

    return tmp;
}
