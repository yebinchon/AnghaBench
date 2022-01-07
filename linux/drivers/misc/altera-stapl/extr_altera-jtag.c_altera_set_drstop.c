
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_jtag {int drstop_state; } ;
typedef enum altera_jtag_state { ____Placeholder_altera_jtag_state } altera_jtag_state ;



int altera_set_drstop(struct altera_jtag *js, enum altera_jtag_state state)
{
 js->drstop_state = state;

 return 0;
}
