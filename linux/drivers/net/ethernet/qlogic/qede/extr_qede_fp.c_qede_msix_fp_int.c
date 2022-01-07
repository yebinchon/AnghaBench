
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_fastpath {int napi; int sb_info; } ;
typedef int irqreturn_t ;


 int IGU_INT_DISABLE ;
 int IRQ_HANDLED ;
 int napi_schedule_irqoff (int *) ;
 int qed_sb_ack (int ,int ,int ) ;

irqreturn_t qede_msix_fp_int(int irq, void *fp_cookie)
{
 struct qede_fastpath *fp = fp_cookie;

 qed_sb_ack(fp->sb_info, IGU_INT_DISABLE, 0 );

 napi_schedule_irqoff(&fp->napi);
 return IRQ_HANDLED;
}
