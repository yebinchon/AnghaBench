
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netup_unidvb_dev {scalar_t__ bmmio0; } ;
typedef int irqreturn_t ;


 scalar_t__ CAM_CTRLSTAT_CLR ;
 int IRQ_HANDLED ;
 int writew (int,scalar_t__) ;

irqreturn_t netup_ci_interrupt(struct netup_unidvb_dev *ndev)
{
 writew(0x101, ndev->bmmio0 + CAM_CTRLSTAT_CLR);
 return IRQ_HANDLED;
}
