
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvt_dev {int lock; } ;


 int CIR_IRCON ;
 int CIR_IREN ;
 int CIR_IRSTS ;
 int LOGICAL_DEV_CIR ;
 int nvt_cir_reg_write (struct nvt_dev*,int,int ) ;
 int nvt_clear_cir_fifo (struct nvt_dev*) ;
 int nvt_clear_tx_fifo (struct nvt_dev*) ;
 int nvt_disable_logical_dev (struct nvt_dev*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void nvt_disable_cir(struct nvt_dev *nvt)
{
 unsigned long flags;

 spin_lock_irqsave(&nvt->lock, flags);


 nvt_cir_reg_write(nvt, 0, CIR_IREN);


 nvt_cir_reg_write(nvt, 0xff, CIR_IRSTS);


 nvt_cir_reg_write(nvt, 0, CIR_IRCON);


 nvt_clear_cir_fifo(nvt);
 nvt_clear_tx_fifo(nvt);

 spin_unlock_irqrestore(&nvt->lock, flags);


 nvt_disable_logical_dev(nvt, LOGICAL_DEV_CIR);
}
