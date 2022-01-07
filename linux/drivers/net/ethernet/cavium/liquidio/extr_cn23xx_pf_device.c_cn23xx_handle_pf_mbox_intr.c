
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct TYPE_4__ {size_t num_vfs_alloced; size_t rings_per_vf; } ;
struct octeon_device {TYPE_3__** mbox; TYPE_1__ sriov_info; } ;
struct delayed_work {int dummy; } ;
struct TYPE_5__ {struct delayed_work work; } ;
struct TYPE_6__ {TYPE_2__ mbox_poll_wk; int mbox_int_reg; } ;


 int BIT_ULL (size_t) ;
 int msecs_to_jiffies (int ) ;
 scalar_t__ octeon_mbox_read (TYPE_3__*) ;
 int readq (int ) ;
 int schedule_delayed_work (struct delayed_work*,int ) ;
 int writeq (int,int ) ;

__attribute__((used)) static void cn23xx_handle_pf_mbox_intr(struct octeon_device *oct)
{
 struct delayed_work *work;
 u64 mbox_int_val;
 u32 i, q_no;

 mbox_int_val = readq(oct->mbox[0]->mbox_int_reg);

 for (i = 0; i < oct->sriov_info.num_vfs_alloced; i++) {
  q_no = i * oct->sriov_info.rings_per_vf;

  if (mbox_int_val & BIT_ULL(q_no)) {
   writeq(BIT_ULL(q_no),
          oct->mbox[0]->mbox_int_reg);
   if (octeon_mbox_read(oct->mbox[q_no])) {
    work = &oct->mbox[q_no]->mbox_poll_wk.work;
    schedule_delayed_work(work,
            msecs_to_jiffies(0));
   }
  }
 }
}
