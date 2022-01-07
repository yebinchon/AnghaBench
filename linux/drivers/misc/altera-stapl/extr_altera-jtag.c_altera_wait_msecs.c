
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_jtag {scalar_t__ jtag_state; } ;
struct altera_state {struct altera_jtag js; } ;
typedef int s32 ;
typedef enum altera_jtag_state { ____Placeholder_altera_jtag_state } altera_jtag_state ;


 scalar_t__ ILLEGAL_JTAG_STATE ;
 int altera_goto_jstate (struct altera_state*,int) ;
 int udelay (int ) ;

int altera_wait_msecs(struct altera_state *astate,
   s32 microseconds, enum altera_jtag_state wait_state)
{
 struct altera_jtag *js = &astate->js;
 int status = 0;

 if ((js->jtag_state != ILLEGAL_JTAG_STATE) &&
     (js->jtag_state != wait_state))
  status = altera_goto_jstate(astate, wait_state);

 if (status == 0)

  udelay(microseconds);

 return status;
}
