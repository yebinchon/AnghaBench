
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qede_dev {TYPE_2__* arfs; TYPE_1__* ndev; } ;
struct TYPE_4__ {struct TYPE_4__* arfs_fltr_bmap; } ;
struct TYPE_3__ {int * rx_cpu_rmap; } ;


 int free_irq_cpu_rmap (int *) ;
 int vfree (TYPE_2__*) ;

void qede_free_arfs(struct qede_dev *edev)
{
 if (!edev->arfs)
  return;







 vfree(edev->arfs->arfs_fltr_bmap);
 edev->arfs->arfs_fltr_bmap = ((void*)0);
 vfree(edev->arfs);
 edev->arfs = ((void*)0);
}
