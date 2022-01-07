
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {int dev; } ;
struct TYPE_3__ {scalar_t__ amem; scalar_t__ sram; struct pcmcia_device* finder; } ;
typedef TYPE_1__ ray_dev_t ;


 scalar_t__ CIS_OFFSET ;
 scalar_t__ ECF_INTR_OFFSET ;
 int ECF_INTR_SET ;
 scalar_t__ SCB_BASE ;
 int dev_dbg (int *,char*,...) ;
 int pcmcia_dev_present (struct pcmcia_device*) ;
 int readb (scalar_t__) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int interrupt_ecf(ray_dev_t *local, int ccs)
{
 int i = 50;
 struct pcmcia_device *link = local->finder;

 if (!(pcmcia_dev_present(link))) {
  dev_dbg(&link->dev, "ray_cs interrupt_ecf - device not present\n");
  return -1;
 }
 dev_dbg(&link->dev, "interrupt_ecf(local=%p, ccs = 0x%x\n", local, ccs);

 while (i &&
        (readb(local->amem + CIS_OFFSET + ECF_INTR_OFFSET) &
  ECF_INTR_SET))
  i--;
 if (i == 0) {
  dev_dbg(&link->dev, "ray_cs interrupt_ecf card not ready for interrupt\n");
  return -1;
 }

 writeb(ccs, local->sram + SCB_BASE);
 writeb(ECF_INTR_SET, local->amem + CIS_OFFSET + ECF_INTR_OFFSET);
 return 0;
}
