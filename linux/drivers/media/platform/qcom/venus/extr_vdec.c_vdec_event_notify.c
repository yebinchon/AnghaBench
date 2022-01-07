
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venus_inst {int session_error; int error; struct venus_core* core; } ;
struct venus_core {struct device* dev_dec; } ;
struct hfi_event_data {int tag; int event_type; } ;
struct device {int dummy; } ;







 int dev_err (struct device*,char*,int ) ;
 int vdec_event_change (struct venus_inst*,struct hfi_event_data*,int) ;
 int venus_helper_release_buf_ref (struct venus_inst*,int ) ;

__attribute__((used)) static void vdec_event_notify(struct venus_inst *inst, u32 event,
         struct hfi_event_data *data)
{
 struct venus_core *core = inst->core;
 struct device *dev = core->dev_dec;

 switch (event) {
 case 132:
  inst->session_error = 1;
  dev_err(dev, "dec: event session error %x\n", inst->error);
  break;
 case 131:
  switch (data->event_type) {
  case 129:
   vdec_event_change(inst, data, 1);
   break;
  case 130:
   vdec_event_change(inst, data, 0);
   break;
  case 128:
   venus_helper_release_buf_ref(inst, data->tag);
   break;
  default:
   break;
  }
  break;
 default:
  break;
 }
}
