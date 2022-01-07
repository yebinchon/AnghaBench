
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {int an_int; TYPE_1__* vdata; int an_irq_work; int an_workqueue; } ;
struct TYPE_2__ {scalar_t__ irq_reissue_support; } ;


 int MDIO_AN_INT ;
 int MDIO_MMD_AN ;
 int XMDIO_READ (struct xgbe_prv_data*,int ,int ) ;
 int XMDIO_WRITE (struct xgbe_prv_data*,int ,int ,int) ;
 int XP_INT_REISSUE_EN ;
 int XP_IOWRITE (struct xgbe_prv_data*,int ,int) ;
 int queue_work (int ,int *) ;
 int xgbe_an73_disable_interrupts (struct xgbe_prv_data*) ;
 int xgbe_an73_enable_interrupts (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_an73_isr(struct xgbe_prv_data *pdata)
{

 xgbe_an73_disable_interrupts(pdata);


 pdata->an_int = XMDIO_READ(pdata, MDIO_MMD_AN, MDIO_AN_INT);

 if (pdata->an_int) {

  XMDIO_WRITE(pdata, MDIO_MMD_AN, MDIO_AN_INT, ~pdata->an_int);

  queue_work(pdata->an_workqueue, &pdata->an_irq_work);
 } else {

  xgbe_an73_enable_interrupts(pdata);


  if (pdata->vdata->irq_reissue_support)
   XP_IOWRITE(pdata, XP_INT_REISSUE_EN, 1 << 3);
 }
}
