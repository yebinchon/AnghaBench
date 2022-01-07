
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct venus_core {TYPE_2__* core_ops; int dev; } ;
struct TYPE_3__ {int session_id; } ;
struct hfi_msg_event_notify_pkt {int event_data2; int event_data1; TYPE_1__ shdr; } ;
struct TYPE_4__ {int (* event_notify ) (struct venus_core*,int ) ;} ;


 int dev_dbg (int ,char*,int ,int ,int ) ;
 int stub1 (struct venus_core*,int ) ;

__attribute__((used)) static void event_sys_error(struct venus_core *core, u32 event,
       struct hfi_msg_event_notify_pkt *pkt)
{
 if (pkt)
  dev_dbg(core->dev,
   "sys error (session id:%x, data1:%x, data2:%x)\n",
   pkt->shdr.session_id, pkt->event_data1,
   pkt->event_data2);

 core->core_ops->event_notify(core, event);
}
