
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {int config_flags; int irq; char** prod_id; struct pcan_pccard* priv; int dev; TYPE_1__** resource; } ;
struct pcan_pccard {int ioport_addr; int led_timer; int chan_count; void* fw_minor; void* fw_major; struct pcmcia_device* pdev; } ;
struct TYPE_2__ {int start; } ;


 int CONF_AUTO_SET_IO ;
 int CONF_ENABLE_IRQ ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int PCC_FW_MAJOR ;
 int PCC_FW_MINOR ;
 int PCC_NAME ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,char*,void*,void*) ;
 int ioport_map (int ,int ) ;
 int ioport_unmap (int ) ;
 int kfree (struct pcan_pccard*) ;
 struct pcan_pccard* kzalloc (int,int ) ;
 int pcan_add_channels (struct pcan_pccard*) ;
 int pcan_conf_check ;
 int pcan_free_channels (struct pcan_pccard*) ;
 int pcan_isr ;
 int pcan_led_timer ;
 void* pcan_read_reg (struct pcan_pccard*,int ) ;
 int pcan_set_can_power (struct pcan_pccard*,int) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int pcmcia_enable_device (struct pcmcia_device*) ;
 int pcmcia_loop_config (struct pcmcia_device*,int ,int *) ;
 int request_irq (int,int *,int ,int ,struct pcan_pccard*) ;
 int resource_size (TYPE_1__*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int pcan_probe(struct pcmcia_device *pdev)
{
 struct pcan_pccard *card;
 int err;

 pdev->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_SET_IO;

 err = pcmcia_loop_config(pdev, pcan_conf_check, ((void*)0));
 if (err) {
  dev_err(&pdev->dev, "pcmcia_loop_config() error %d\n", err);
  goto probe_err_1;
 }

 if (!pdev->irq) {
  dev_err(&pdev->dev, "no irq assigned\n");
  err = -ENODEV;
  goto probe_err_1;
 }

 err = pcmcia_enable_device(pdev);
 if (err) {
  dev_err(&pdev->dev, "pcmcia_enable_device failed err=%d\n",
   err);
  goto probe_err_1;
 }

 card = kzalloc(sizeof(struct pcan_pccard), GFP_KERNEL);
 if (!card) {
  err = -ENOMEM;
  goto probe_err_2;
 }

 card->pdev = pdev;
 pdev->priv = card;


 card->ioport_addr = ioport_map(pdev->resource[0]->start,
     resource_size(pdev->resource[0]));
 if (!card->ioport_addr) {
  dev_err(&pdev->dev, "couldn't map io port into io memory\n");
  err = -ENOMEM;
  goto probe_err_3;
 }
 card->fw_major = pcan_read_reg(card, PCC_FW_MAJOR);
 card->fw_minor = pcan_read_reg(card, PCC_FW_MINOR);


 dev_info(&pdev->dev, "PEAK-System pcmcia card %s fw %d.%d\n",
  pdev->prod_id[1] ? pdev->prod_id[1] : "PCAN-PC Card",
  card->fw_major, card->fw_minor);


 pcan_add_channels(card);
 if (!card->chan_count) {
  err = -ENOMEM;
  goto probe_err_4;
 }


 timer_setup(&card->led_timer, pcan_led_timer, 0);


 err = request_irq(pdev->irq, &pcan_isr, IRQF_SHARED, PCC_NAME, card);
 if (err) {
  dev_err(&pdev->dev, "couldn't request irq%d\n", pdev->irq);
  goto probe_err_5;
 }


 pcan_set_can_power(card, 1);

 return 0;

probe_err_5:

 pcan_free_channels(card);

probe_err_4:
 ioport_unmap(card->ioport_addr);

probe_err_3:
 kfree(card);
 pdev->priv = ((void*)0);

probe_err_2:
 pcmcia_disable_device(pdev);

probe_err_1:
 return err;
}
