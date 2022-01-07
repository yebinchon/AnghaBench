
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int used_cnt; TYPE_1__* msix; scalar_t__ msix_cnt; } ;
struct qede_dev {TYPE_4__ int_info; int cdev; TYPE_3__* ops; int * fp_array; } ;
struct TYPE_7__ {TYPE_2__* common; } ;
struct TYPE_6__ {int (* simd_handler_clean ) (int ,int) ;} ;
struct TYPE_5__ {int vector; } ;


 int free_irq (int ,int *) ;
 int stub1 (int ,int) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void qede_sync_free_irqs(struct qede_dev *edev)
{
 int i;

 for (i = 0; i < edev->int_info.used_cnt; i++) {
  if (edev->int_info.msix_cnt) {
   synchronize_irq(edev->int_info.msix[i].vector);
   free_irq(edev->int_info.msix[i].vector,
     &edev->fp_array[i]);
  } else {
   edev->ops->common->simd_handler_clean(edev->cdev, i);
  }
 }

 edev->int_info.used_cnt = 0;
}
