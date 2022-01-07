
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct venus_inst {TYPE_3__* ops; int error; } ;
struct venus_core {TYPE_1__* res; } ;
struct hfi_profile_level {int level; int profile; } ;
struct hfi_pic_struct {int progressive_only; } ;
struct hfi_msg_event_notify_pkt {int event_data1; int event_data2; int * ext_event_data; } ;
struct hfi_framesize {int height; int width; } ;
struct hfi_extradata_input_crop {int height; int width; int top; int left; } ;
struct TYPE_5__ {int height; int width; int top; int left; } ;
struct hfi_event_data {int event_type; int entropy_mode; TYPE_2__ input_crop; int buf_count; int colour_space; int pic_struct; int bit_depth; int level; int profile; int height; int width; int member_0; } ;
struct hfi_colour_space {int colour_space; } ;
struct hfi_buffer_requirements {int dummy; } ;
struct hfi_bit_depth {int bit_depth; } ;
typedef enum hfi_version { ____Placeholder_hfi_version } hfi_version ;
struct TYPE_6__ {int (* event_notify ) (struct venus_inst*,int ,struct hfi_event_data*) ;} ;
struct TYPE_4__ {int hfi_version; } ;


 int EVT_SYS_EVENT_CHANGE ;
 int HFI_BUFREQ_COUNT_MIN (struct hfi_buffer_requirements*,int) ;
 int HFI_ERR_NONE ;
 int HFI_ERR_SESSION_INSUFFICIENT_RESOURCES ;
 int HFI_ERR_SESSION_INVALID_PARAMETER ;
 int stub1 (struct venus_inst*,int ,struct hfi_event_data*) ;

__attribute__((used)) static void event_seq_changed(struct venus_core *core, struct venus_inst *inst,
         struct hfi_msg_event_notify_pkt *pkt)
{
 enum hfi_version ver = core->res->hfi_version;
 struct hfi_event_data event = {0};
 int num_properties_changed;
 struct hfi_framesize *frame_sz;
 struct hfi_profile_level *profile_level;
 struct hfi_bit_depth *pixel_depth;
 struct hfi_pic_struct *pic_struct;
 struct hfi_colour_space *colour_info;
 struct hfi_buffer_requirements *bufreq;
 struct hfi_extradata_input_crop *crop;
 u8 *data_ptr;
 u32 ptype;

 inst->error = HFI_ERR_NONE;

 switch (pkt->event_data1) {
 case 136:
 case 137:
  break;
 default:
  inst->error = HFI_ERR_SESSION_INVALID_PARAMETER;
  goto done;
 }

 event.event_type = pkt->event_data1;

 num_properties_changed = pkt->event_data2;
 if (!num_properties_changed) {
  inst->error = HFI_ERR_SESSION_INSUFFICIENT_RESOURCES;
  goto done;
 }

 data_ptr = (u8 *)&pkt->ext_event_data[0];
 do {
  ptype = *((u32 *)data_ptr);
  switch (ptype) {
  case 132:
   data_ptr += sizeof(u32);
   frame_sz = (struct hfi_framesize *)data_ptr;
   event.width = frame_sz->width;
   event.height = frame_sz->height;
   data_ptr += sizeof(*frame_sz);
   break;
  case 131:
   data_ptr += sizeof(u32);
   profile_level = (struct hfi_profile_level *)data_ptr;
   event.profile = profile_level->profile;
   event.level = profile_level->level;
   data_ptr += sizeof(*profile_level);
   break;
  case 128:
   data_ptr += sizeof(u32);
   pixel_depth = (struct hfi_bit_depth *)data_ptr;
   event.bit_depth = pixel_depth->bit_depth;
   data_ptr += sizeof(*pixel_depth);
   break;
  case 129:
   data_ptr += sizeof(u32);
   pic_struct = (struct hfi_pic_struct *)data_ptr;
   event.pic_struct = pic_struct->progressive_only;
   data_ptr += sizeof(*pic_struct);
   break;
  case 130:
   data_ptr += sizeof(u32);
   colour_info = (struct hfi_colour_space *)data_ptr;
   event.colour_space = colour_info->colour_space;
   data_ptr += sizeof(*colour_info);
   break;
  case 133:
   data_ptr += sizeof(u32);
   event.entropy_mode = *(u32 *)data_ptr;
   data_ptr += sizeof(u32);
   break;
  case 134:
   data_ptr += sizeof(u32);
   bufreq = (struct hfi_buffer_requirements *)data_ptr;
   event.buf_count = HFI_BUFREQ_COUNT_MIN(bufreq, ver);
   data_ptr += sizeof(*bufreq);
   break;
  case 135:
   data_ptr += sizeof(u32);
   crop = (struct hfi_extradata_input_crop *)data_ptr;
   event.input_crop.left = crop->left;
   event.input_crop.top = crop->top;
   event.input_crop.width = crop->width;
   event.input_crop.height = crop->height;
   data_ptr += sizeof(*crop);
   break;
  default:
   break;
  }
  num_properties_changed--;
 } while (num_properties_changed > 0);

done:
 inst->ops->event_notify(inst, EVT_SYS_EVENT_CHANGE, &event);
}
