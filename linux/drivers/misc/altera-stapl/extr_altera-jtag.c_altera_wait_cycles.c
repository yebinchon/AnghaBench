
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_jtag {int jtag_state; } ;
struct altera_state {struct altera_jtag js; } ;
typedef long s32 ;
typedef enum altera_jtag_state { ____Placeholder_altera_jtag_state } altera_jtag_state ;


 int IGNORE_TDO ;
 int RESET ;
 int TDI_LOW ;
 int TMS_HIGH ;
 int TMS_LOW ;
 int alt_jtag_io (int,int ,int ) ;
 int altera_goto_jstate (struct altera_state*,int) ;

int altera_wait_cycles(struct altera_state *astate,
     s32 cycles,
     enum altera_jtag_state wait_state)
{
 struct altera_jtag *js = &astate->js;
 int tms;
 s32 count;
 int status = 0;

 if (js->jtag_state != wait_state)
  status = altera_goto_jstate(astate, wait_state);

 if (status == 0) {




  tms = (wait_state == RESET) ? TMS_HIGH : TMS_LOW;

  for (count = 0L; count < cycles; count++)
   alt_jtag_io(tms, TDI_LOW, IGNORE_TDO);

 }

 return status;
}
