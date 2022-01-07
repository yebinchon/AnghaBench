
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct venus_inst {int dummy; } ;
struct venus_core {struct device* dev; } ;
struct TYPE_2__ {int session_id; } ;
struct hfi_session_pkt {TYPE_1__ shdr; } ;
struct hfi_pkt_hdr {scalar_t__ size; int pkt_type; } ;
struct hfi_done_handler {scalar_t__ pkt_sz; scalar_t__ pkt_sz2; int (* done ) (struct venus_core*,struct venus_inst*,struct hfi_pkt_hdr*) ;int pkt; scalar_t__ is_sys_pkt; } ;
struct device {int dummy; } ;


 unsigned int ARRAY_SIZE (struct hfi_done_handler*) ;
 int HFI_MSG_EVENT_NOTIFY ;
 int dev_err (struct device*,char*,scalar_t__,...) ;
 int dev_warn (struct device*,char*,int ,int ) ;
 struct hfi_done_handler* handlers ;
 int stub1 (struct venus_core*,struct venus_inst*,struct hfi_pkt_hdr*) ;
 struct venus_inst* to_instance (struct venus_core*,int ) ;

u32 hfi_process_msg_packet(struct venus_core *core, struct hfi_pkt_hdr *hdr)
{
 const struct hfi_done_handler *handler;
 struct device *dev = core->dev;
 struct venus_inst *inst;
 bool found = 0;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(handlers); i++) {
  handler = &handlers[i];
  if (handler->pkt != hdr->pkt_type)
   continue;
  found = 1;
  break;
 }

 if (!found)
  return hdr->pkt_type;

 if (hdr->size && hdr->size < handler->pkt_sz &&
     hdr->size < handler->pkt_sz2) {
  dev_err(dev, "bad packet size (%d should be %d, pkt type:%x)\n",
   hdr->size, handler->pkt_sz, hdr->pkt_type);

  return hdr->pkt_type;
 }

 if (handler->is_sys_pkt) {
  inst = ((void*)0);
 } else {
  struct hfi_session_pkt *pkt;

  pkt = (struct hfi_session_pkt *)hdr;
  inst = to_instance(core, pkt->shdr.session_id);

  if (!inst)
   dev_warn(dev, "no valid instance(pkt session_id:%x, pkt:%x)\n",
     pkt->shdr.session_id,
     handler ? handler->pkt : 0);





  if (!inst && hdr->pkt_type != HFI_MSG_EVENT_NOTIFY) {
   dev_err(dev, "got invalid session id:%x\n",
    pkt->shdr.session_id);
   goto invalid_session;
  }
 }

 handler->done(core, inst, hdr);

invalid_session:
 return hdr->pkt_type;
}
