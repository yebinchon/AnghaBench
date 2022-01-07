
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int dummy; } ;


 int dprintk (int,char*) ;
 int dst_pio_disable (struct dst_state*) ;
 int msleep (int) ;
 int rdc_8820_reset (struct dst_state*) ;

int dst_error_bailout(struct dst_state *state)
{
 dprintk(2, "Trying to bailout from previous error.\n");
 rdc_8820_reset(state);
 dst_pio_disable(state);
 msleep(10);

 return 0;
}
