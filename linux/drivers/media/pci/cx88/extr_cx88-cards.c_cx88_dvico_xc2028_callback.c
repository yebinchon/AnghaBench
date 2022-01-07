
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx88_core {int boardnr; } ;



 int EINVAL ;
 int MO_GP0_IO ;

 int cx_clear (int ,int) ;
 int cx_set (int ,int) ;
 int cx_write (int ,int) ;
 int mdelay (int) ;
 int msleep (int) ;

__attribute__((used)) static int cx88_dvico_xc2028_callback(struct cx88_core *core,
          int command, int arg)
{
 switch (command) {
 case 128:
  switch (core->boardnr) {
  case 129:


   cx_set(MO_GP0_IO, 0x00001000);
   cx_clear(MO_GP0_IO, 0x00000010);
   msleep(100);
   cx_set(MO_GP0_IO, 0x00000010);
   msleep(100);
   break;
  default:
   cx_write(MO_GP0_IO, 0x101000);
   mdelay(5);
   cx_set(MO_GP0_IO, 0x101010);
  }
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
