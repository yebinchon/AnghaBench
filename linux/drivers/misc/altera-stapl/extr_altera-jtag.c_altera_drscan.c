
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct altera_jtag {int dr_pre; int dr_post; int jtag_state; int dr_length; int const drstop_state; int * dr_buffer; int dr_post_data; int dr_pre_data; } ;
struct altera_state {struct altera_jtag js; } ;
typedef enum altera_jtag_state { ____Placeholder_altera_jtag_state } altera_jtag_state ;
 int ENOMEM ;
 int EREMOTEIO ;
 int alt_jtag_drscan (struct altera_state*,int,int,int *,int *) ;
 scalar_t__ alt_malloc (int) ;
 int altera_concatenate_data (int *,int ,int,int *,int,int,int ,int) ;
 int altera_goto_jstate (struct altera_state*,int) ;
 int kfree (int *) ;

int altera_drscan(struct altera_state *astate,
    u32 count,
    u8 *tdi_data,
    u32 start_index)

{
 struct altera_jtag *js = &astate->js;
 int start_code = 0;
 u32 alloc_chars = 0;
 u32 shift_count = js->dr_pre + count + js->dr_post;
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
  if (shift_count > js->dr_length) {
   alloc_chars = (shift_count + 7) >> 3;
   kfree(js->dr_buffer);
   js->dr_buffer = (u8 *)alt_malloc(alloc_chars);
   if (js->dr_buffer == ((void*)0))
    status = -ENOMEM;
   else
    js->dr_length = alloc_chars * 8;

  }
 }

 if (status == 0) {




  altera_concatenate_data(js->dr_buffer,
     js->dr_pre_data,
     js->dr_pre,
     tdi_data,
     start_index,
     count,
     js->dr_post_data,
     js->dr_post);

  alt_jtag_drscan(astate, start_code, shift_count,
    js->dr_buffer, ((void*)0));

  js->jtag_state = 141;
 }

 if (status == 0)
  if (js->drstop_state != 141)
   status = altera_goto_jstate(astate, js->drstop_state);

 return status;
}
