
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct venus_inst {TYPE_1__* ops; int error; } ;
struct venus_core {struct device* dev; } ;
struct TYPE_4__ {int session_id; } ;
struct hfi_msg_event_notify_pkt {int event_data1; TYPE_2__ shdr; int event_data2; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int (* event_notify ) (struct venus_inst*,int ,int *) ;} ;


 int EVT_SESSION_ERROR ;
 int HFI_ERR_NONE ;




 int dev_dbg (struct device*,char*,int ,int ) ;
 int dev_err (struct device*,char*,int ,int ,int ) ;
 int stub1 (struct venus_inst*,int ,int *) ;

__attribute__((used)) static void
event_session_error(struct venus_core *core, struct venus_inst *inst,
      struct hfi_msg_event_notify_pkt *pkt)
{
 struct device *dev = core->dev;

 dev_dbg(dev, "session error: event id:%x, session id:%x\n",
  pkt->event_data1, pkt->shdr.session_id);

 if (!inst)
  return;

 switch (pkt->event_data1) {

 case 131:
 case 129:
 case 130:
 case 128:
  inst->error = HFI_ERR_NONE;
  break;
 default:
  dev_err(dev, "session error: event id:%x (%x), session id:%x\n",
   pkt->event_data1, pkt->event_data2,
   pkt->shdr.session_id);

  inst->error = pkt->event_data1;
  inst->ops->event_notify(inst, EVT_SESSION_ERROR, ((void*)0));
  break;
 }
}
