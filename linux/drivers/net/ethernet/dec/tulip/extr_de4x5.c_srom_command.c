
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;


 int DT_CS ;
 int srom_latch (int,int ) ;

__attribute__((used)) static void
srom_command(u_int command, u_long addr)
{
    srom_latch(command, addr);
    srom_latch(command, addr);
    srom_latch((command & 0x0000ff00) | DT_CS, addr);
}
