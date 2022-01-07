
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int instr_processed; } ;
struct octeon_instr_queue {int lock; int instr_pending; TYPE_3__ stats; int host_write_index; int octeon_read_index; scalar_t__ fill_cnt; } ;
struct TYPE_5__ {int iq; } ;
struct octeon_device {struct octeon_instr_queue** instr_queue; TYPE_2__ io_qmask; TYPE_1__* pci_dev; } ;
struct TYPE_4__ {int dev; } ;


 int BIT_ULL (int) ;
 int MAX_OCTEON_INSTR_QUEUES (struct octeon_device*) ;
 scalar_t__ atomic_read (int *) ;
 int dev_err (int *,char*) ;
 int lio_process_iq_request_list (struct octeon_device*,struct octeon_instr_queue*,int ) ;
 int lio_process_ordered_list (struct octeon_device*,int) ;
 int schedule_timeout_uninterruptible (int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ wait_for_pending_requests (struct octeon_device*) ;

__attribute__((used)) static void pcierror_quiesce_device(struct octeon_device *oct)
{
 int i;







 schedule_timeout_uninterruptible(100);

 if (wait_for_pending_requests(oct))
  dev_err(&oct->pci_dev->dev, "There were pending requests\n");


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


}
