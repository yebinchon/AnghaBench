
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
typedef int u_char ;


 int DT_IN ;
 int getfrom_srom (int ) ;
 int srom_latch (int,int ) ;
 int udelay (int) ;

__attribute__((used)) static void
srom_address(u_int command, u_long addr, u_char offset)
{
    int i, a;

    a = offset << 2;
    for (i=0; i<6; i++, a <<= 1) {
 srom_latch(command | ((a & 0x80) ? DT_IN : 0), addr);
    }
    udelay(1);

    i = (getfrom_srom(addr) >> 3) & 0x01;
}
