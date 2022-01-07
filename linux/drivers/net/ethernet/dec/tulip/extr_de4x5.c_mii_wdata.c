
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int MII_MWR ;
 int MII_WR ;
 int sendto_mii (int,int,int ) ;

__attribute__((used)) static void
mii_wdata(int data, int len, u_long ioaddr)
{
    int i;

    for (i=0; i<len; i++) {
 sendto_mii(MII_MWR | MII_WR, data, ioaddr);
 data >>= 1;
    }
}
