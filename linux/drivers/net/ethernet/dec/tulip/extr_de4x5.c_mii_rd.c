
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_char ;


 int MII_PREAMBLE ;
 int MII_STRD ;
 int mii_address (int ,int ) ;
 int mii_rdata (int ) ;
 int mii_ta (int ,int ) ;
 int mii_wdata (int ,int,int ) ;

__attribute__((used)) static int
mii_rd(u_char phyreg, u_char phyaddr, u_long ioaddr)
{
    mii_wdata(MII_PREAMBLE, 2, ioaddr);
    mii_wdata(MII_PREAMBLE, 32, ioaddr);
    mii_wdata(MII_STRD, 4, ioaddr);
    mii_address(phyaddr, ioaddr);
    mii_address(phyreg, ioaddr);
    mii_ta(MII_STRD, ioaddr);

    return mii_rdata(ioaddr);
}
