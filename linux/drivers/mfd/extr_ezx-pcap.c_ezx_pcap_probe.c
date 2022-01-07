
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int bits_per_word; int mode; int dev; int irq; } ;
struct pcap_platform_data {int config; int irq_base; int num_subdevs; int (* init ) (struct pcap_chip*) ;int * subdevs; } ;
struct pcap_chip {int irq_base; int msr; int workqueue; struct spi_device* spi; int msr_work; int isr_work; int adc_lock; int io_lock; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int IRQ_NOPROBE ;
 int IRQ_NOREQUEST ;
 int IRQ_TYPE_EDGE_RISING ;
 int PCAP_CLEAR_INTERRUPT_REGISTER ;
 int PCAP_CS_AH ;
 int PCAP_IRQ_ADCDONE ;
 int PCAP_IRQ_ADCDONE2 ;
 int PCAP_MASK_ALL_INTERRUPT ;
 int PCAP_NIRQS ;
 int PCAP_REG_INT_SEL ;
 int PCAP_REG_ISR ;
 int PCAP_REG_MSR ;
 int PCAP_SECOND_PORT ;
 int SPI_CS_HIGH ;
 int SPI_MODE_0 ;
 int create_singlethread_workqueue (char*) ;
 int destroy_workqueue (int ) ;
 int dev_err (int *,char*) ;
 struct pcap_platform_data* dev_get_platdata (int *) ;
 int device_for_each_child (int *,int *,int ) ;
 struct pcap_chip* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int ,int ,char*,struct pcap_chip*) ;
 int ezx_pcap_write (struct pcap_chip*,int ,int) ;
 int * handle_simple_irq ;
 int irq_clear_status_flags (int,int) ;
 int irq_set_chained_handler_and_data (int ,int ,struct pcap_chip*) ;
 int irq_set_chip_and_handler (int,int *,int *) ;
 int irq_set_chip_data (int,struct pcap_chip*) ;
 int irq_set_irq_type (int ,int ) ;
 int irq_set_irq_wake (int ,int) ;
 int pcap_adc_irq ;
 int pcap_add_subdev (struct pcap_chip*,int *) ;
 int pcap_irq_chip ;
 int pcap_irq_handler ;
 int pcap_isr_work ;
 int pcap_msr_work ;
 int pcap_remove_subdev ;
 int pcap_to_irq (struct pcap_chip*,int) ;
 int spi_set_drvdata (struct spi_device*,struct pcap_chip*) ;
 int spi_setup (struct spi_device*) ;
 int spin_lock_init (int *) ;
 int stub1 (struct pcap_chip*) ;

__attribute__((used)) static int ezx_pcap_probe(struct spi_device *spi)
{
 struct pcap_platform_data *pdata = dev_get_platdata(&spi->dev);
 struct pcap_chip *pcap;
 int i, adc_irq;
 int ret = -ENODEV;


 if (!pdata)
  goto ret;

 pcap = devm_kzalloc(&spi->dev, sizeof(*pcap), GFP_KERNEL);
 if (!pcap) {
  ret = -ENOMEM;
  goto ret;
 }

 spin_lock_init(&pcap->io_lock);
 spin_lock_init(&pcap->adc_lock);
 INIT_WORK(&pcap->isr_work, pcap_isr_work);
 INIT_WORK(&pcap->msr_work, pcap_msr_work);
 spi_set_drvdata(spi, pcap);


 spi->bits_per_word = 32;
 spi->mode = SPI_MODE_0 | (pdata->config & PCAP_CS_AH ? SPI_CS_HIGH : 0);
 ret = spi_setup(spi);
 if (ret)
  goto ret;

 pcap->spi = spi;


 pcap->irq_base = pdata->irq_base;
 pcap->workqueue = create_singlethread_workqueue("pcapd");
 if (!pcap->workqueue) {
  ret = -ENOMEM;
  dev_err(&spi->dev, "can't create pcap thread\n");
  goto ret;
 }


 if (!(pdata->config & PCAP_SECOND_PORT))
  ezx_pcap_write(pcap, PCAP_REG_INT_SEL,
     (1 << PCAP_IRQ_ADCDONE2));


 for (i = pcap->irq_base; i < (pcap->irq_base + PCAP_NIRQS); i++) {
  irq_set_chip_and_handler(i, &pcap_irq_chip, handle_simple_irq);
  irq_set_chip_data(i, pcap);
  irq_clear_status_flags(i, IRQ_NOREQUEST | IRQ_NOPROBE);
 }


 ezx_pcap_write(pcap, PCAP_REG_MSR, PCAP_MASK_ALL_INTERRUPT);
 ezx_pcap_write(pcap, PCAP_REG_ISR, PCAP_CLEAR_INTERRUPT_REGISTER);
 pcap->msr = PCAP_MASK_ALL_INTERRUPT;

 irq_set_irq_type(spi->irq, IRQ_TYPE_EDGE_RISING);
 irq_set_chained_handler_and_data(spi->irq, pcap_irq_handler, pcap);
 irq_set_irq_wake(spi->irq, 1);


 adc_irq = pcap_to_irq(pcap, (pdata->config & PCAP_SECOND_PORT) ?
     PCAP_IRQ_ADCDONE2 : PCAP_IRQ_ADCDONE);

 ret = devm_request_irq(&spi->dev, adc_irq, pcap_adc_irq, 0, "ADC",
    pcap);
 if (ret)
  goto free_irqchip;


 for (i = 0; i < pdata->num_subdevs; i++) {
  ret = pcap_add_subdev(pcap, &pdata->subdevs[i]);
  if (ret)
   goto remove_subdevs;
 }


 if (pdata->init)
  pdata->init(pcap);

 return 0;

remove_subdevs:
 device_for_each_child(&spi->dev, ((void*)0), pcap_remove_subdev);
free_irqchip:
 for (i = pcap->irq_base; i < (pcap->irq_base + PCAP_NIRQS); i++)
  irq_set_chip_and_handler(i, ((void*)0), ((void*)0));

 destroy_workqueue(pcap->workqueue);
ret:
 return ret;
}
