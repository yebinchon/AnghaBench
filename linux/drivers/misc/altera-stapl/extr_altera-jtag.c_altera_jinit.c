
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_jtag {int * ir_buffer; int * dr_buffer; int * ir_post_data; int * ir_pre_data; int * dr_post_data; int * dr_pre_data; scalar_t__ ir_length; scalar_t__ dr_length; scalar_t__ ir_post; scalar_t__ ir_pre; scalar_t__ dr_post; scalar_t__ dr_pre; void* irstop_state; void* drstop_state; int jtag_state; } ;
struct altera_state {struct altera_jtag js; } ;


 void* IDLE ;
 int ILLEGAL_JTAG_STATE ;

int altera_jinit(struct altera_state *astate)
{
 struct altera_jtag *js = &astate->js;


 js->jtag_state = ILLEGAL_JTAG_STATE;


 js->drstop_state = IDLE;
 js->irstop_state = IDLE;
 js->dr_pre = 0;
 js->dr_post = 0;
 js->ir_pre = 0;
 js->ir_post = 0;
 js->dr_length = 0;
 js->ir_length = 0;

 js->dr_pre_data = ((void*)0);
 js->dr_post_data = ((void*)0);
 js->ir_pre_data = ((void*)0);
 js->ir_post_data = ((void*)0);
 js->dr_buffer = ((void*)0);
 js->ir_buffer = ((void*)0);

 return 0;
}
