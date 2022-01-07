
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_camera_dev {int task_eof; scalar_t__ base; } ;
typedef int irqreturn_t ;


 scalar_t__ CICR0 ;
 unsigned long CICR0_EOFM ;
 scalar_t__ CISR ;
 unsigned long CISR_EOF ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned long __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned long,scalar_t__) ;
 int dev_dbg (int ,char*,unsigned long) ;
 int pcdev_to_dev (struct pxa_camera_dev*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t pxa_camera_irq(int irq, void *data)
{
 struct pxa_camera_dev *pcdev = data;
 unsigned long status, cicr0;

 status = __raw_readl(pcdev->base + CISR);
 dev_dbg(pcdev_to_dev(pcdev),
  "Camera interrupt status 0x%lx\n", status);

 if (!status)
  return IRQ_NONE;

 __raw_writel(status, pcdev->base + CISR);

 if (status & CISR_EOF) {
  cicr0 = __raw_readl(pcdev->base + CICR0) | CICR0_EOFM;
  __raw_writel(cicr0, pcdev->base + CICR0);
  tasklet_schedule(&pcdev->task_eof);
 }

 return IRQ_HANDLED;
}
