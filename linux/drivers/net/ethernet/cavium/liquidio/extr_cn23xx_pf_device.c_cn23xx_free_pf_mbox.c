
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {size_t max_vfs; size_t rings_per_vf; } ;
struct octeon_device {TYPE_3__** mbox; TYPE_1__ sriov_info; } ;
struct TYPE_5__ {int work; } ;
struct TYPE_6__ {TYPE_2__ mbox_poll_wk; } ;


 int cancel_delayed_work_sync (int *) ;
 int vfree (TYPE_3__*) ;

__attribute__((used)) static int cn23xx_free_pf_mbox(struct octeon_device *oct)
{
 u32 q_no, i;

 if (!oct->sriov_info.max_vfs)
  return 0;

 for (i = 0; i < oct->sriov_info.max_vfs; i++) {
  q_no = i * oct->sriov_info.rings_per_vf;
  cancel_delayed_work_sync(
      &oct->mbox[q_no]->mbox_poll_wk.work);
  vfree(oct->mbox[q_no]);
 }

 return 0;
}
