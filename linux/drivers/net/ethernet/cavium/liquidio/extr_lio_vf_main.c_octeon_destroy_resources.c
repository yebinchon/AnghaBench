
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int instr_processed; } ;
struct octeon_instr_queue {int lock; int instr_pending; TYPE_1__ stats; int host_write_index; int octeon_read_index; int fill_cnt; } ;
struct octeon_device_priv {int droq_tasklet; } ;
struct TYPE_12__ {int work; } ;
struct TYPE_11__ {int iq; int oq; } ;
struct TYPE_10__ {int (* free_mbox ) (struct octeon_device*) ;int (* disable_interrupt ) (struct octeon_device*,int ) ;int (* disable_io_queues ) (struct octeon_device*) ;} ;
struct octeon_device {int num_msix_irqs; TYPE_5__* pci_dev; TYPE_4__ nic_poll_work; TYPE_3__ io_qmask; TYPE_2__ fn_list; int * irq_name_storage; int * msix_entries; TYPE_8__* ioq_vector; int msix_on; struct octeon_instr_queue** instr_queue; int status; int app_mode; scalar_t__ priv; } ;
struct msix_entry {int vector; } ;
struct TYPE_14__ {int vector; } ;
struct TYPE_13__ {int reset_fn; int dev; } ;


 int BIT_ULL (int) ;
 int CVM_DRV_INVALID_APP ;
 int HZ ;
 int MAX_OCTEON_INSTR_QUEUES (struct octeon_device*) ;
 int MAX_OCTEON_OUTPUT_QUEUES (struct octeon_device*) ;
 int OCTEON_ALL_INTR ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int cancel_delayed_work_sync (int *) ;
 int cn23xx_vf_ask_pf_to_do_flr (struct octeon_device*) ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*) ;
 int free_irq (int ,TYPE_8__*) ;
 int irq_set_affinity_hint (int ,int *) ;
 int kfree (int *) ;
 int lio_get_state_string (int *) ;
 int lio_process_iq_request_list (struct octeon_device*,struct octeon_instr_queue*,int ) ;
 int lio_process_ordered_list (struct octeon_device*,int) ;
 int lio_wait_for_instr_fetch (struct octeon_device*) ;
 int lio_wait_for_oq_pkts (struct octeon_device*) ;
 int mdelay (int) ;
 int octeon_delete_dispatch_list (struct octeon_device*) ;
 int octeon_delete_droq (struct octeon_device*,int) ;
 int octeon_delete_instr_queue (struct octeon_device*,int) ;
 int octeon_delete_response_list (struct octeon_device*) ;
 int octeon_free_ioq_vector (struct octeon_device*) ;
 int octeon_free_sc_buffer_pool (struct octeon_device*) ;
 int octeon_free_sc_done_list (struct octeon_device*) ;
 int octeon_free_sc_zombie_list (struct octeon_device*) ;
 int octeon_pci_flr (struct octeon_device*) ;
 int octeon_unmap_pci_barx (struct octeon_device*,int) ;
 int pci_clear_master (TYPE_5__*) ;
 int pci_disable_device (TYPE_5__*) ;
 int pci_disable_msix (TYPE_5__*) ;
 int schedule_timeout_uninterruptible (int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct octeon_device*) ;
 int stub2 (struct octeon_device*,int ) ;
 int stub3 (struct octeon_device*) ;
 int tasklet_kill (int *) ;
 int wait_for_pending_requests (struct octeon_device*) ;

__attribute__((used)) static void octeon_destroy_resources(struct octeon_device *oct)
{
 struct octeon_device_priv *oct_priv =
  (struct octeon_device_priv *)oct->priv;
 struct msix_entry *msix_entries;
 int i;

 switch (atomic_read(&oct->status)) {
 case 129:
 case 142:

  atomic_set(&oct->status, 136);

  oct->app_mode = CVM_DRV_INVALID_APP;
  dev_dbg(&oct->pci_dev->dev, "Device state is now %s\n",
   lio_get_state_string(&oct->status));

  schedule_timeout_uninterruptible(HZ / 10);


 case 139:

 case 135:
  if (lio_wait_for_instr_fetch(oct))
   dev_err(&oct->pci_dev->dev, "IQ had pending instructions\n");

  if (wait_for_pending_requests(oct))
   dev_err(&oct->pci_dev->dev, "There were pending requests\n");





  oct->fn_list.disable_io_queues(oct);

  if (lio_wait_for_oq_pkts(oct))
   dev_err(&oct->pci_dev->dev, "OQ had pending packets\n");




  for (i = 0; i < MAX_OCTEON_INSTR_QUEUES(oct); i++) {
   struct octeon_instr_queue *iq;

   if (!(oct->io_qmask.iq & BIT_ULL(i)))
    continue;
   iq = oct->instr_queue[i];

   if (atomic_read(&iq->instr_pending)) {
    spin_lock_bh(&iq->lock);
    iq->fill_cnt = 0;
    iq->octeon_read_index = iq->host_write_index;
    iq->stats.instr_processed +=
     atomic_read(&iq->instr_pending);
    lio_process_iq_request_list(oct, iq, 0);
    spin_unlock_bh(&iq->lock);
   }
  }

  lio_process_ordered_list(oct, 1);
  octeon_free_sc_done_list(oct);
  octeon_free_sc_zombie_list(oct);


 case 137:

  oct->fn_list.disable_interrupt(oct, OCTEON_ALL_INTR);

  if (oct->msix_on) {
   msix_entries = (struct msix_entry *)oct->msix_entries;
   for (i = 0; i < oct->num_msix_irqs; i++) {
    if (oct->ioq_vector[i].vector) {
     irq_set_affinity_hint(
       msix_entries[i].vector,
       ((void*)0));
     free_irq(msix_entries[i].vector,
       &oct->ioq_vector[i]);
     oct->ioq_vector[i].vector = 0;
    }
   }
   pci_disable_msix(oct->pci_dev);
   kfree(oct->msix_entries);
   oct->msix_entries = ((void*)0);
   kfree(oct->irq_name_storage);
   oct->irq_name_storage = ((void*)0);
  }

  if (oct->pci_dev->reset_fn)
   octeon_pci_flr(oct);
  else
   cn23xx_vf_ask_pf_to_do_flr(oct);


 case 133:
  octeon_free_ioq_vector(oct);


 case 134:
  oct->fn_list.free_mbox(oct);


 case 136:
 case 140:
  mdelay(100);
  for (i = 0; i < MAX_OCTEON_OUTPUT_QUEUES(oct); i++) {
   if (!(oct->io_qmask.oq & BIT_ULL(i)))
    continue;
   octeon_delete_droq(oct, i);
  }


 case 130:
  octeon_delete_response_list(oct);


 case 138:
  for (i = 0; i < MAX_OCTEON_INSTR_QUEUES(oct); i++) {
   if (!(oct->io_qmask.iq & BIT_ULL(i)))
    continue;
   octeon_delete_instr_queue(oct, i);
  }


 case 128:
  octeon_free_sc_buffer_pool(oct);


 case 141:
  octeon_delete_dispatch_list(oct);
  cancel_delayed_work_sync(&oct->nic_poll_work.work);


 case 131:
  octeon_unmap_pci_barx(oct, 0);
  octeon_unmap_pci_barx(oct, 1);


 case 132:
  pci_clear_master(oct->pci_dev);

  pci_disable_device(oct->pci_dev);


 case 143:

  break;
 }

 tasklet_kill(&oct_priv->droq_tasklet);
}
