
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pcf50633_adc {int queue_mutex; int pcf; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PCF50633_IRQ_ADCRDY ;
 int dev_to_pcf50633 (int ) ;
 struct pcf50633_adc* devm_kzalloc (TYPE_1__*,int,int ) ;
 int mutex_init (int *) ;
 int pcf50633_adc_irq ;
 int pcf50633_register_irq (int ,int ,int ,struct pcf50633_adc*) ;
 int platform_set_drvdata (struct platform_device*,struct pcf50633_adc*) ;

__attribute__((used)) static int pcf50633_adc_probe(struct platform_device *pdev)
{
 struct pcf50633_adc *adc;

 adc = devm_kzalloc(&pdev->dev, sizeof(*adc), GFP_KERNEL);
 if (!adc)
  return -ENOMEM;

 adc->pcf = dev_to_pcf50633(pdev->dev.parent);
 platform_set_drvdata(pdev, adc);

 pcf50633_register_irq(adc->pcf, PCF50633_IRQ_ADCRDY,
     pcf50633_adc_irq, adc);

 mutex_init(&adc->queue_mutex);

 return 0;
}
