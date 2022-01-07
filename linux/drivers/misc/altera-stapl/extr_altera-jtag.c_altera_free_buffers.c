
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_jtag {scalar_t__ jtag_state; int * ir_buffer; int * ir_post_data; int * ir_pre_data; int * dr_buffer; int * dr_post_data; int * dr_pre_data; } ;
struct altera_state {struct altera_jtag js; } ;


 scalar_t__ ILLEGAL_JTAG_STATE ;
 int altera_jreset_idle (struct altera_state*) ;
 int kfree (int *) ;

void altera_free_buffers(struct altera_state *astate)
{
 struct altera_jtag *js = &astate->js;

 if (js->jtag_state != ILLEGAL_JTAG_STATE)
  altera_jreset_idle(astate);

 kfree(js->dr_pre_data);
 js->dr_pre_data = ((void*)0);

 kfree(js->dr_post_data);
 js->dr_post_data = ((void*)0);

 kfree(js->dr_buffer);
 js->dr_buffer = ((void*)0);

 kfree(js->ir_pre_data);
 js->ir_pre_data = ((void*)0);

 kfree(js->ir_post_data);
 js->ir_post_data = ((void*)0);

 kfree(js->ir_buffer);
 js->ir_buffer = ((void*)0);
}
