
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int used_cnt; TYPE_2__* msix; scalar_t__ msix_cnt; } ;
struct qede_dev {TYPE_4__ int_info; int * fp_array; int cdev; TYPE_3__* ops; TYPE_1__* ndev; } ;
struct qed_common_ops {int (* get_fp_int ) (int ,TYPE_4__*) ;int (* simd_handler_config ) (int ,int *,int,int ) ;} ;
struct TYPE_7__ {struct qed_common_ops* common; } ;
struct TYPE_6__ {int vector; } ;
struct TYPE_5__ {int irq; } ;


 int QEDE_QUEUE_CNT (struct qede_dev*) ;
 int qede_req_msix_irqs (struct qede_dev*) ;
 int qede_simd_fp_handler ;
 int stub1 (int ,TYPE_4__*) ;
 int stub2 (int ,int *,int,int ) ;

__attribute__((used)) static int qede_setup_irqs(struct qede_dev *edev)
{
 int i, rc = 0;


 rc = edev->ops->common->get_fp_int(edev->cdev, &edev->int_info);
 if (rc)
  return rc;

 if (edev->int_info.msix_cnt) {
  rc = qede_req_msix_irqs(edev);
  if (rc)
   return rc;
  edev->ndev->irq = edev->int_info.msix[0].vector;
 } else {
  const struct qed_common_ops *ops;


  ops = edev->ops->common;
  for (i = 0; i < QEDE_QUEUE_CNT(edev); i++)
   ops->simd_handler_config(edev->cdev,
       &edev->fp_array[i], i,
       qede_simd_fp_handler);
  edev->int_info.used_cnt = QEDE_QUEUE_CNT(edev);
 }
 return 0;
}
