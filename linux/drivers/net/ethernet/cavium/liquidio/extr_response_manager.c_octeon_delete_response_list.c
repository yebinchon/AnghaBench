
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int work; } ;
struct TYPE_4__ {int wq; TYPE_1__ wk; } ;
struct octeon_device {TYPE_2__ dma_comp_wq; } ;


 int cancel_delayed_work_sync (int *) ;
 int destroy_workqueue (int ) ;

void octeon_delete_response_list(struct octeon_device *oct)
{
 cancel_delayed_work_sync(&oct->dma_comp_wq.wk.work);
 destroy_workqueue(oct->dma_comp_wq.wq);
}
