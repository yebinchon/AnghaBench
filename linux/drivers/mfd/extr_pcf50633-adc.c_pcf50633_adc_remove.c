
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct pcf50633_adc {int queue_head; int queue_mutex; int * queue; TYPE_1__* pcf; } ;
struct TYPE_2__ {int dev; } ;


 int PCF50633_IRQ_ADCRDY ;
 int PCF50633_MAX_ADC_FIFO_DEPTH ;
 scalar_t__ WARN_ON (int ) ;
 int dev_err (int ,char*) ;
 int kfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcf50633_free_irq (TYPE_1__*,int ) ;
 struct pcf50633_adc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int pcf50633_adc_remove(struct platform_device *pdev)
{
 struct pcf50633_adc *adc = platform_get_drvdata(pdev);
 int i, head;

 pcf50633_free_irq(adc->pcf, PCF50633_IRQ_ADCRDY);

 mutex_lock(&adc->queue_mutex);
 head = adc->queue_head;

 if (WARN_ON(adc->queue[head]))
  dev_err(adc->pcf->dev,
   "adc driver removed with request pending\n");

 for (i = 0; i < PCF50633_MAX_ADC_FIFO_DEPTH; i++)
  kfree(adc->queue[i]);

 mutex_unlock(&adc->queue_mutex);

 return 0;
}
