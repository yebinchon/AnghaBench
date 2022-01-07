
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct venus_resources {int vmem_addr; int vmem_size; int vmem_id; } ;
struct venus_hfi_device {int irq_status; int pwr_collapse_prep; int release_resource; void* pkt_buf; TYPE_1__* core; } ;
struct venus_core {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct venus_resources* res; } ;






 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int WRAPPER_INTR_STATUS_A2HWD_MASK ;
 int complete (int *) ;
 int hfi_process_msg_packet (struct venus_core*,void*) ;
 int hfi_process_watchdog_timeout (struct venus_core*) ;
 struct venus_hfi_device* to_hfi_priv (struct venus_core*) ;
 int venus_flush_debug_queue (struct venus_hfi_device*) ;
 int venus_hfi_core_set_resource (struct venus_core*,int ,int ,int ,struct venus_hfi_device*) ;
 int venus_iface_msgq_read (struct venus_hfi_device*,void*) ;
 int venus_process_msg_sys_error (struct venus_hfi_device*,void*) ;
 int venus_sfr_print (struct venus_hfi_device*) ;

__attribute__((used)) static irqreturn_t venus_isr_thread(struct venus_core *core)
{
 struct venus_hfi_device *hdev = to_hfi_priv(core);
 const struct venus_resources *res;
 void *pkt;
 u32 msg_ret;

 if (!hdev)
  return IRQ_NONE;

 res = hdev->core->res;
 pkt = hdev->pkt_buf;

 if (hdev->irq_status & WRAPPER_INTR_STATUS_A2HWD_MASK) {
  venus_sfr_print(hdev);
  hfi_process_watchdog_timeout(core);
 }

 while (!venus_iface_msgq_read(hdev, pkt)) {
  msg_ret = hfi_process_msg_packet(core, pkt);
  switch (msg_ret) {
  case 131:
   venus_process_msg_sys_error(hdev, pkt);
   break;
  case 130:
   venus_hfi_core_set_resource(core, res->vmem_id,
          res->vmem_size,
          res->vmem_addr,
          hdev);
   break;
  case 128:
   complete(&hdev->release_resource);
   break;
  case 129:
   complete(&hdev->pwr_collapse_prep);
   break;
  default:
   break;
  }
 }

 venus_flush_debug_queue(hdev);

 return IRQ_HANDLED;
}
