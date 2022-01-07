
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u32 ;


 int MII_MDC ;
 int outl (int,int ) ;
 int udelay (int) ;

__attribute__((used)) static void
sendto_mii(u32 command, int data, u_long ioaddr)
{
    u32 j;

    j = (data & 1) << 17;
    outl(command | j, ioaddr);
    udelay(1);
    outl(command | MII_MDC | j, ioaddr);
    udelay(1);
}
