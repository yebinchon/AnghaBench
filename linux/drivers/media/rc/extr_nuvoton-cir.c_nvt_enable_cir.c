
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvt_dev {int lock; } ;


 int CIR_IRCON ;
 int CIR_IRCON_RXEN ;
 int CIR_IRCON_RXINV ;
 int CIR_IRCON_SAMPLE_PERIOD_SEL ;
 int CIR_IRCON_TXEN ;
 int CIR_IRSTS ;
 int LOGICAL_DEV_CIR ;
 int nvt_cir_reg_write (struct nvt_dev*,int,int ) ;
 int nvt_enable_logical_dev (struct nvt_dev*,int ) ;
 int nvt_set_cir_iren (struct nvt_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void nvt_enable_cir(struct nvt_dev *nvt)
{
 unsigned long flags;


 nvt_enable_logical_dev(nvt, LOGICAL_DEV_CIR);

 spin_lock_irqsave(&nvt->lock, flags);





 nvt_cir_reg_write(nvt, CIR_IRCON_TXEN | CIR_IRCON_RXEN |
     CIR_IRCON_RXINV | CIR_IRCON_SAMPLE_PERIOD_SEL,
     CIR_IRCON);


 nvt_cir_reg_write(nvt, 0xff, CIR_IRSTS);


 nvt_set_cir_iren(nvt);

 spin_unlock_irqrestore(&nvt->lock, flags);
}
