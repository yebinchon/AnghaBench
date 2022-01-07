
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mx25_tsadc {int domain; } ;


 int irq_domain_remove (int ) ;
 int irq_set_chained_handler_and_data (int,int *,int *) ;
 struct mx25_tsadc* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;

__attribute__((used)) static int mx25_tsadc_remove(struct platform_device *pdev)
{
 struct mx25_tsadc *tsadc = platform_get_drvdata(pdev);
 int irq = platform_get_irq(pdev, 0);

 if (irq) {
  irq_set_chained_handler_and_data(irq, ((void*)0), ((void*)0));
  irq_domain_remove(tsadc->domain);
 }

 return 0;
}
