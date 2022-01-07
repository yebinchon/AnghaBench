
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct altera_jtag {int jtag_state; } ;
struct altera_state {struct altera_jtag js; } ;
typedef enum altera_jtag_state { ____Placeholder_altera_jtag_state } altera_jtag_state ;
struct TYPE_2__ {size_t tms_high; size_t tms_low; } ;


 int DRPAUSE ;
 int DRSHIFT ;
 int EREMOTEIO ;
 int IDLE ;
 int IGNORE_TDO ;
 int ILLEGAL_JTAG_STATE ;
 int IRPAUSE ;
 int IRSHIFT ;
 int RESET ;
 int TDI_LOW ;
 int TMS_HIGH ;
 int TMS_LOW ;
 int alt_jtag_io (int,int ,int ) ;
 int altera_jreset_idle (struct altera_state*) ;
 int* altera_jtag_path_map ;
 TYPE_1__* altera_transitions ;

int altera_goto_jstate(struct altera_state *astate,
     enum altera_jtag_state state)
{
 struct altera_jtag *js = &astate->js;
 int tms;
 int count = 0;
 int status = 0;

 if (js->jtag_state == ILLEGAL_JTAG_STATE)

  altera_jreset_idle(astate);

 if (js->jtag_state == state) {





  if ((state == IDLE) || (state == DRSHIFT) ||
   (state == DRPAUSE) || (state == IRSHIFT) ||
    (state == IRPAUSE)) {
   alt_jtag_io(TMS_LOW, TDI_LOW, IGNORE_TDO);
  } else if (state == RESET)
   alt_jtag_io(TMS_HIGH, TDI_LOW, IGNORE_TDO);

 } else {
  while ((js->jtag_state != state) && (count < 9)) {

   tms = (altera_jtag_path_map[js->jtag_state] &
       (1 << state))
       ? TMS_HIGH : TMS_LOW;


   alt_jtag_io(tms, TDI_LOW, IGNORE_TDO);

   if (tms)
    js->jtag_state =
     altera_transitions[js->jtag_state].tms_high;
   else
    js->jtag_state =
     altera_transitions[js->jtag_state].tms_low;

   ++count;
  }
 }

 if (js->jtag_state != state)
  status = -EREMOTEIO;

 return status;
}
