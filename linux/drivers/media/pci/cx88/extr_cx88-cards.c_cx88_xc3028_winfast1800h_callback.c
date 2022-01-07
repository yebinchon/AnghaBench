
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx88_core {int dummy; } ;


 int EINVAL ;
 int MO_GP1_IO ;

 int cx_clear (int ,int) ;
 int cx_set (int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static int cx88_xc3028_winfast1800h_callback(struct cx88_core *core,
          int command, int arg)
{
 switch (command) {
 case 128:

  cx_set(MO_GP1_IO, 0x1010);
  mdelay(50);
  cx_clear(MO_GP1_IO, 0x10);
  mdelay(75);
  cx_set(MO_GP1_IO, 0x10);
  mdelay(75);
  return 0;
 }
 return -EINVAL;
}
