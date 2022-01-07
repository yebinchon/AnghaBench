
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct venus_inst {int session_error; int error; TYPE_1__* core; } ;
struct hfi_event_data {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev_enc; } ;


 scalar_t__ EVT_SESSION_ERROR ;
 int dev_err (struct device*,char*,int ) ;

__attribute__((used)) static void venc_event_notify(struct venus_inst *inst, u32 event,
         struct hfi_event_data *data)
{
 struct device *dev = inst->core->dev_enc;

 if (event == EVT_SESSION_ERROR) {
  inst->session_error = 1;
  dev_err(dev, "enc: event session error %x\n", inst->error);
 }
}
