
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int * reg; } ;
struct TYPE_8__ {int header_type; int header_size; } ;
struct TYPE_7__ {int error_code; } ;
struct TYPE_10__ {TYPE_4__ irq; TYPE_3__ common; int status; TYPE_2__ error; } ;
struct vub300_mmc_host {int irqs_queued; int irq_disabled; int irq_mutex; int mmc; int irq_enabled; TYPE_5__ resp; int card_present; int system_port_status; TYPE_1__* command_res_urb; } ;
struct TYPE_6__ {scalar_t__ actual_length; } ;


 int HZ ;






 int SD_ERROR_NO_DEVICE ;
 int add_offloaded_reg (struct vub300_mmc_host*,int *) ;
 int check_vub300_port_status (struct vub300_mmc_host*) ;
 int mmc_signal_sdio_irq (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int new_system_port_status (struct vub300_mmc_host*) ;
 int vub300_queue_poll_work (struct vub300_mmc_host*,int) ;

__attribute__((used)) static void __vub300_irqpoll_response(struct vub300_mmc_host *vub300)
{

 if (vub300->command_res_urb->actual_length == 0)
  return;

 switch (vub300->resp.common.header_type) {
 case 132:
  mutex_lock(&vub300->irq_mutex);
  if (vub300->irq_enabled)
   mmc_signal_sdio_irq(vub300->mmc);
  else
   vub300->irqs_queued += 1;
  vub300->irq_disabled = 1;
  mutex_unlock(&vub300->irq_mutex);
  break;
 case 133:
  if (vub300->resp.error.error_code == SD_ERROR_NO_DEVICE)
   check_vub300_port_status(vub300);
  break;
 case 128:
  vub300->system_port_status = vub300->resp.status;
  new_system_port_status(vub300);
  if (!vub300->card_present)
   vub300_queue_poll_work(vub300, HZ / 5);
  break;
 case 131:
 {
  int offloaded_data_length = vub300->resp.common.header_size - 3;
  int register_count = offloaded_data_length >> 3;
  int ri = 0;
  while (register_count--) {
   add_offloaded_reg(vub300, &vub300->resp.irq.reg[ri]);
   ri += 1;
  }
  mutex_lock(&vub300->irq_mutex);
  if (vub300->irq_enabled)
   mmc_signal_sdio_irq(vub300->mmc);
  else
   vub300->irqs_queued += 1;
  vub300->irq_disabled = 1;
  mutex_unlock(&vub300->irq_mutex);
  break;
 }
 case 130:
 {
  int offloaded_data_length = vub300->resp.common.header_size - 3;
  int register_count = offloaded_data_length >> 3;
  int ri = 0;
  while (register_count--) {
   add_offloaded_reg(vub300, &vub300->resp.irq.reg[ri]);
   ri += 1;
  }
  mutex_lock(&vub300->irq_mutex);
  if (vub300->irq_enabled)
   mmc_signal_sdio_irq(vub300->mmc);
  else
   vub300->irqs_queued += 1;
  vub300->irq_disabled = 0;
  mutex_unlock(&vub300->irq_mutex);
  break;
 }
 case 129:
  vub300_queue_poll_work(vub300, 1);
  break;
 default:
  break;
 }
}
