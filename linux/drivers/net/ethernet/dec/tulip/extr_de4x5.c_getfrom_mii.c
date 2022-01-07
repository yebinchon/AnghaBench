
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u32 ;


 int MII_MDC ;
 int inl (int ) ;
 int outl (int,int ) ;
 int udelay (int) ;

__attribute__((used)) static int
getfrom_mii(u32 command, u_long ioaddr)
{
    outl(command, ioaddr);
    udelay(1);
    outl(command | MII_MDC, ioaddr);
    udelay(1);

    return (inl(ioaddr) >> 19) & 1;
}
