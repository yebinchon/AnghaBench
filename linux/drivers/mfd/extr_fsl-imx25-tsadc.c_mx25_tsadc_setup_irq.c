
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct mx25_tsadc {int domain; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int dev_err (struct device*,char*) ;
 int irq_domain_add_simple (struct device_node*,int,int ,int *,struct mx25_tsadc*) ;
 int irq_set_chained_handler_and_data (int,int ,struct mx25_tsadc*) ;
 int mx25_tsadc_domain_ops ;
 int mx25_tsadc_irq_handler ;
 int platform_get_irq (struct platform_device*,int ) ;

__attribute__((used)) static int mx25_tsadc_setup_irq(struct platform_device *pdev,
    struct mx25_tsadc *tsadc)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 int irq;

 irq = platform_get_irq(pdev, 0);
 if (irq <= 0)
  return irq;

 tsadc->domain = irq_domain_add_simple(np, 2, 0, &mx25_tsadc_domain_ops,
           tsadc);
 if (!tsadc->domain) {
  dev_err(dev, "Failed to add irq domain\n");
  return -ENOMEM;
 }

 irq_set_chained_handler_and_data(irq, mx25_tsadc_irq_handler, tsadc);

 return 0;
}
