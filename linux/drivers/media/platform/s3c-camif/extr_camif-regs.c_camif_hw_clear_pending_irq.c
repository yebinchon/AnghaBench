
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct camif_vp {int camif; int id; } ;


 int CIGCTRL_IRQ_CLR (int ) ;
 int S3C_CAMIF_REG_CIGCTRL ;
 int camif_read (int ,int ) ;
 int camif_write (int ,int ,int ) ;

void camif_hw_clear_pending_irq(struct camif_vp *vp)
{
 u32 cfg = camif_read(vp->camif, S3C_CAMIF_REG_CIGCTRL);
 cfg |= CIGCTRL_IRQ_CLR(vp->id);
 camif_write(vp->camif, S3C_CAMIF_REG_CIGCTRL, cfg);
}
