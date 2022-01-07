
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mantis_pci {int dummy; } ;


 int MANTIS_DEBUG ;
 int dprintk (int ,int ,int,char*) ;
 int mmread (int) ;
 int mmwrite (int,int) ;
 int verbose ;

void mantis_set_direction(struct mantis_pci *mantis, int direction)
{
 u32 reg;

 reg = mmread(0x28);
 dprintk(verbose, MANTIS_DEBUG, 1, "TS direction setup");
 if (direction == 0x01) {

  reg |= 0x04;
  mmwrite(reg, 0x28);
  reg &= 0xff - 0x04;
  mmwrite(reg, 0x28);
 } else {
  reg &= 0xff - 0x04;
  mmwrite(reg, 0x28);
  reg |= 0x04;
  mmwrite(reg, 0x28);
 }
}
