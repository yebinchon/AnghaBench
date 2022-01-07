
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_char ;


 int DT_CS ;
 int DT_IN ;
 int SROM_RD ;
 int SROM_SR ;
 int sendto_srom (int,int ) ;
 int srom_address (int,int ,int ) ;
 int srom_command (int,int ) ;
 short srom_data (int,int ) ;
 int srom_latch (int,int ) ;

__attribute__((used)) static short
srom_rd(u_long addr, u_char offset)
{
    sendto_srom(SROM_RD | SROM_SR, addr);

    srom_latch(SROM_RD | SROM_SR | DT_CS, addr);
    srom_command(SROM_RD | SROM_SR | DT_IN | DT_CS, addr);
    srom_address(SROM_RD | SROM_SR | DT_CS, addr, offset);

    return srom_data(SROM_RD | SROM_SR | DT_CS, addr);
}
