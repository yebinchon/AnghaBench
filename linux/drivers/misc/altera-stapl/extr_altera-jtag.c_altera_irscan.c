
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct altera_jtag {int ir_pre; int ir_post; int jtag_state; int ir_length; int const irstop_state; int * ir_buffer; int ir_post_data; int ir_pre_data; } ;
struct altera_state {struct altera_jtag js; } ;
typedef enum altera_jtag_state { ____Placeholder_altera_jtag_state } altera_jtag_state ;
 int ENOMEM ;
 int EREMOTEIO ;
 int alt_jtag_irscan (struct altera_state*,int,int,int *,int *) ;
 scalar_t__ alt_malloc (int) ;
 int altera_concatenate_data (int *,int ,int,int *,int,int,int ,int) ;
 int altera_goto_jstate (struct altera_state*,int) ;
 int kfree (int *) ;

int altera_irscan(struct altera_state *astate,
    u32 count,
    u8 *tdi_data,
    u32 start_index)

{
 struct altera_jtag *js = &astate->js;
 int start_code = 0;
 u32 alloc_chars = 0;
 u32 shift_count = js->ir_pre + count + js->ir_post;
 int status = 0;
 enum altera_jtag_state start_state = 136;

 switch (js->jtag_state) {
 case 136:
 case 128:
 case 137:
  start_code = 0;
  start_state = 137;
  break;

 case 140:
 case 144:
 case 139:
 case 143:
 case 141:
 case 142:
 case 138:
  start_code = 1;
  start_state = 141;
  break;

 case 131:
 case 135:
 case 130:
 case 134:
 case 132:
 case 133:
 case 129:
  start_code = 2;
  start_state = 132;
  break;

 default:
  status = -EREMOTEIO;
  break;
 }

 if (status == 0)
  if (js->jtag_state != start_state)
   status = altera_goto_jstate(astate, start_state);

 if (status == 0) {
  if (shift_count > js->ir_length) {
   alloc_chars = (shift_count + 7) >> 3;
   kfree(js->ir_buffer);
   js->ir_buffer = (u8 *)alt_malloc(alloc_chars);
   if (js->ir_buffer == ((void*)0))
    status = -ENOMEM;
   else
    js->ir_length = alloc_chars * 8;

  }
 }

 if (status == 0) {




  altera_concatenate_data(js->ir_buffer,
     js->ir_pre_data,
     js->ir_pre,
     tdi_data,
     start_index,
     count,
     js->ir_post_data,
     js->ir_post);

  alt_jtag_irscan(astate,
    start_code,
    shift_count,
    js->ir_buffer,
    ((void*)0));


  js->jtag_state = 132;
 }

 if (status == 0)
  if (js->irstop_state != 132)
   status = altera_goto_jstate(astate, js->irstop_state);


 return status;
}
