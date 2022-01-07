
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx88_core {int boardnr; } ;




 int EINVAL ;
 int MO_GP0_IO ;
 int cx_clear (int ,int) ;
 int cx_set (int ,int) ;
 int dprintk (int,char*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int cx88_xc5000_tuner_callback(struct cx88_core *core,
          int command, int arg)
{
 switch (core->boardnr) {
 case 128:
  if (command == 0) {
   return 0;
  }

  dprintk(1, "xc5000: unknown tuner callback command.\n");
  return -EINVAL;
 case 129:
  if (command == 0) {
   cx_clear(MO_GP0_IO, 0x00000010);
   usleep_range(10000, 20000);
   cx_set(MO_GP0_IO, 0x00000010);
   return 0;
  }

  dprintk(1, "xc5000: unknown tuner callback command.\n");
  return -EINVAL;
 }
 return 0;
}
