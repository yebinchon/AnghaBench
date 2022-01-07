
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {unsigned int an_int; unsigned int an_status; TYPE_1__* vdata; int an_irq_work; int an_workqueue; } ;
struct TYPE_2__ {scalar_t__ irq_reissue_support; } ;


 int MDIO_MMD_VEND2 ;
 int MDIO_VEND2_AN_STAT ;
 unsigned int XGBE_AN_CL37_INT_MASK ;
 unsigned int XMDIO_READ (struct xgbe_prv_data*,int ,int ) ;
 int XMDIO_WRITE (struct xgbe_prv_data*,int ,int ,unsigned int) ;
 int XP_INT_REISSUE_EN ;
 int XP_IOWRITE (struct xgbe_prv_data*,int ,int) ;
 int queue_work (int ,int *) ;
 int xgbe_an37_disable_interrupts (struct xgbe_prv_data*) ;
 int xgbe_an37_enable_interrupts (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_an37_isr(struct xgbe_prv_data *pdata)
{
 unsigned int reg;


 xgbe_an37_disable_interrupts(pdata);


 reg = XMDIO_READ(pdata, MDIO_MMD_VEND2, MDIO_VEND2_AN_STAT);
 pdata->an_int = reg & XGBE_AN_CL37_INT_MASK;
 pdata->an_status = reg & ~XGBE_AN_CL37_INT_MASK;

 if (pdata->an_int) {

  reg &= ~XGBE_AN_CL37_INT_MASK;
  XMDIO_WRITE(pdata, MDIO_MMD_VEND2, MDIO_VEND2_AN_STAT, reg);

  queue_work(pdata->an_workqueue, &pdata->an_irq_work);
 } else {

  xgbe_an37_enable_interrupts(pdata);


  if (pdata->vdata->irq_reissue_support)
   XP_IOWRITE(pdata, XP_INT_REISSUE_EN, 1 << 3);
 }
}
