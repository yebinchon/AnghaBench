
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct pcap_chip {int irq_base; int workqueue; int adc_lock; int * adc_queue; } ;


 int PCAP_ADC_MAXQ ;
 int PCAP_NIRQS ;
 int destroy_workqueue (int ) ;
 int device_for_each_child (int *,int *,int ) ;
 int irq_set_chip_and_handler (int,int *,int *) ;
 int kfree (int ) ;
 int pcap_remove_subdev ;
 struct pcap_chip* spi_get_drvdata (struct spi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ezx_pcap_remove(struct spi_device *spi)
{
 struct pcap_chip *pcap = spi_get_drvdata(spi);
 unsigned long flags;
 int i;


 device_for_each_child(&spi->dev, ((void*)0), pcap_remove_subdev);


 spin_lock_irqsave(&pcap->adc_lock, flags);
 for (i = 0; i < PCAP_ADC_MAXQ; i++)
  kfree(pcap->adc_queue[i]);
 spin_unlock_irqrestore(&pcap->adc_lock, flags);


 for (i = pcap->irq_base; i < (pcap->irq_base + PCAP_NIRQS); i++)
  irq_set_chip_and_handler(i, ((void*)0), ((void*)0));

 destroy_workqueue(pcap->workqueue);

 return 0;
}
