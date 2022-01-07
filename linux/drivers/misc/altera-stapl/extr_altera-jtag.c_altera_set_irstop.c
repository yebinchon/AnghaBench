
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_jtag {int irstop_state; } ;
typedef enum altera_jtag_state { ____Placeholder_altera_jtag_state } altera_jtag_state ;



int altera_set_irstop(struct altera_jtag *js, enum altera_jtag_state state)
{
 js->irstop_state = state;

 return 0;
}
