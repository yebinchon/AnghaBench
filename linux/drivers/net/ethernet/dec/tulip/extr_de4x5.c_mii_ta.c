
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;


 int MII_MRD ;
 int MII_MWR ;
 int MII_RD ;
 scalar_t__ MII_STWR ;
 int MII_WR ;
 int getfrom_mii (int,scalar_t__) ;
 int sendto_mii (int,int,scalar_t__) ;

__attribute__((used)) static void
mii_ta(u_long rw, u_long ioaddr)
{
    if (rw == MII_STWR) {
 sendto_mii(MII_MWR | MII_WR, 1, ioaddr);
 sendto_mii(MII_MWR | MII_WR, 0, ioaddr);
    } else {
 getfrom_mii(MII_MRD | MII_RD, ioaddr);
    }
}
