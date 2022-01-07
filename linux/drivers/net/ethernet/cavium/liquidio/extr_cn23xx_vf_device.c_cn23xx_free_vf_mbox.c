
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct octeon_device {TYPE_2__** mbox; } ;
struct TYPE_3__ {int work; } ;
struct TYPE_4__ {TYPE_1__ mbox_poll_wk; } ;


 int cancel_delayed_work_sync (int *) ;
 int vfree (TYPE_2__*) ;

__attribute__((used)) static int cn23xx_free_vf_mbox(struct octeon_device *oct)
{
 cancel_delayed_work_sync(&oct->mbox[0]->mbox_poll_wk.work);
 vfree(oct->mbox[0]);
 return 0;
}
