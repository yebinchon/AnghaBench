
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;


 int outl (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void
sendto_srom(u_int command, u_long addr)
{
    outl(command, addr);
    udelay(1);
}
