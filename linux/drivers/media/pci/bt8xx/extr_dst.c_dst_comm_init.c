
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int type_flags; } ;


 int DST_TYPE_HAS_FW_1 ;
 int dprintk (int,char*) ;
 scalar_t__ dst_pio_enable (struct dst_state*) ;
 int msleep (int) ;
 int pr_err (char*) ;
 scalar_t__ rdc_reset_state (struct dst_state*) ;

int dst_comm_init(struct dst_state *state)
{
 dprintk(2, "Initializing DST.\n");
 if ((dst_pio_enable(state)) < 0) {
  pr_err("PIO Enable Failed\n");
  return -1;
 }
 if ((rdc_reset_state(state)) < 0) {
  pr_err("RDC 8820 State RESET Failed.\n");
  return -1;
 }
 if (state->type_flags & DST_TYPE_HAS_FW_1)
  msleep(100);
 else
  msleep(5);

 return 0;
}
