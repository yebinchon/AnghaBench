
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_jtag {int jtag_state; } ;
struct altera_state {struct altera_jtag js; } ;


 int IDLE ;
 int IGNORE_TDO ;
 int TDI_LOW ;
 int TMS_HIGH ;
 int TMS_LOW ;
 int alt_jtag_io (int ,int ,int ) ;

__attribute__((used)) static void altera_jreset_idle(struct altera_state *astate)
{
 struct altera_jtag *js = &astate->js;
 int i;

 for (i = 0; i < 5; ++i)
  alt_jtag_io(TMS_HIGH, TDI_LOW, IGNORE_TDO);


 alt_jtag_io(TMS_LOW, TDI_LOW, IGNORE_TDO);
 js->jtag_state = IDLE;
}
