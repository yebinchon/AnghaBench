
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int FEC_IRQ_NUM ;
 int platform_irq_count (struct platform_device*) ;

__attribute__((used)) static int fec_enet_get_irq_cnt(struct platform_device *pdev)
{
 int irq_cnt = platform_irq_count(pdev);

 if (irq_cnt > FEC_IRQ_NUM)
  irq_cnt = FEC_IRQ_NUM;
 else if (irq_cnt == 2)
  irq_cnt = 1;
 else if (irq_cnt <= 0)
  irq_cnt = 1;
 return irq_cnt;
}
