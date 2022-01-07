
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef size_t u32 ;
struct work_struct {int dummy; } ;
struct octeon_mbox {int mbox_write_reg; int mbox_int_reg; struct octeon_device* oct_dev; } ;
struct TYPE_2__ {size_t num_vfs_alloced; size_t rings_per_vf; } ;
struct octeon_device {scalar_t__ rev_id; struct octeon_mbox** mbox; TYPE_1__ sriov_info; } ;
struct cavium_wk {int work; scalar_t__ ctxptr; } ;


 scalar_t__ OCTEON_CN23XX_REV_1_1 ;
 scalar_t__ OCTEON_PFVFACK ;
 int msecs_to_jiffies (int) ;
 int octeon_mbox_process_message (struct octeon_mbox*) ;
 scalar_t__ octeon_mbox_read (struct octeon_mbox*) ;
 scalar_t__ readq (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int writeq (scalar_t__,int ) ;

__attribute__((used)) static void cn23xx_pf_mbox_thread(struct work_struct *work)
{
 struct cavium_wk *wk = (struct cavium_wk *)work;
 struct octeon_mbox *mbox = (struct octeon_mbox *)wk->ctxptr;
 struct octeon_device *oct = mbox->oct_dev;
 u64 mbox_int_val, val64;
 u32 q_no, i;

 if (oct->rev_id < OCTEON_CN23XX_REV_1_1) {

  mbox_int_val = readq(mbox->mbox_int_reg);
  writeq(mbox_int_val, mbox->mbox_int_reg);

  for (i = 0; i < oct->sriov_info.num_vfs_alloced; i++) {
   q_no = i * oct->sriov_info.rings_per_vf;

   val64 = readq(oct->mbox[q_no]->mbox_write_reg);

   if (val64 && (val64 != OCTEON_PFVFACK)) {
    if (octeon_mbox_read(oct->mbox[q_no]))
     octeon_mbox_process_message(
         oct->mbox[q_no]);
   }
  }

  schedule_delayed_work(&wk->work, msecs_to_jiffies(10));
 } else {
  octeon_mbox_process_message(mbox);
 }
}
