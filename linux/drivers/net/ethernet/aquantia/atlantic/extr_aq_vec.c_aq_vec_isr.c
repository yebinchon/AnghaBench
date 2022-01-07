
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_vec_s {int napi; } ;
typedef int irqreturn_t ;


 int EINVAL ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int napi_schedule (int *) ;

irqreturn_t aq_vec_isr(int irq, void *private)
{
 struct aq_vec_s *self = private;
 int err = 0;

 if (!self) {
  err = -EINVAL;
  goto err_exit;
 }
 napi_schedule(&self->napi);

err_exit:
 return err >= 0 ? IRQ_HANDLED : IRQ_NONE;
}
