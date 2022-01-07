
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx88_core {int boardnr; } ;






 int EINVAL ;
 int cx88_xc4000_winfast2000h_plus_callback (struct cx88_core*,int,int) ;

__attribute__((used)) static int cx88_xc4000_tuner_callback(struct cx88_core *core,
          int command, int arg)
{

 switch (core->boardnr) {
 case 131:
 case 130:
 case 129:
 case 128:
  return cx88_xc4000_winfast2000h_plus_callback(core,
             command, arg);
 }
 return -EINVAL;
}
