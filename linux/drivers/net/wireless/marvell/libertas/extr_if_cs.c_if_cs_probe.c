
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {int config_flags; int dev; int card_id; int manf_id; TYPE_1__** resource; int irq; struct if_cs_card* priv; } ;
struct lbs_private {int * reset_deep_sleep_wakeup; int * exit_deep_sleep; int * enter_deep_sleep; int hw_host_to_card; struct if_cs_card* card; } ;
struct if_cs_card {int align_regs; scalar_t__ model; int iobase; struct lbs_private* priv; struct pcmcia_device* p_dev; } ;
struct TYPE_3__ {int start; } ;


 int CONF_AUTO_SET_IO ;
 int CONF_ENABLE_IRQ ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int IF_CS_CF8305_B1_REV ;
 unsigned int IF_CS_CF8381_B3_REV ;
 unsigned int IF_CS_CF8385_B1_REV ;
 int IF_CS_PRODUCT_ID ;
 scalar_t__ IS_ERR (struct lbs_private*) ;
 scalar_t__ MODEL_8305 ;
 scalar_t__ MODEL_8381 ;
 scalar_t__ MODEL_8385 ;
 scalar_t__ MODEL_UNKNOWN ;
 int PTR_ERR (struct lbs_private*) ;
 int fw_table ;
 scalar_t__ get_model (int ,int ) ;
 int if_cs_host_to_card ;
 int if_cs_ioprobe ;
 int if_cs_prog_firmware ;
 unsigned int if_cs_read8 (struct if_cs_card*,int ) ;
 int ioport_map (int ,int ) ;
 int ioport_unmap (int ) ;
 struct if_cs_card* kzalloc (int,int ) ;
 struct lbs_private* lbs_add_card (struct if_cs_card*,int *) ;
 int lbs_deb_cs (char*,int ,TYPE_1__*) ;
 int lbs_get_firmware_async (struct lbs_private*,int *,scalar_t__,int ,int ) ;
 int lbs_remove_card (struct lbs_private*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int pcmcia_enable_device (struct pcmcia_device*) ;
 scalar_t__ pcmcia_loop_config (struct pcmcia_device*,int ,int *) ;
 int pr_err (char*,...) ;
 int resource_size (TYPE_1__*) ;

__attribute__((used)) static int if_cs_probe(struct pcmcia_device *p_dev)
{
 int ret = -ENOMEM;
 unsigned int prod_id;
 struct lbs_private *priv;
 struct if_cs_card *card;

 card = kzalloc(sizeof(struct if_cs_card), GFP_KERNEL);
 if (!card)
  goto out;

 card->p_dev = p_dev;
 p_dev->priv = card;

 p_dev->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_SET_IO;

 if (pcmcia_loop_config(p_dev, if_cs_ioprobe, ((void*)0))) {
  pr_err("error in pcmcia_loop_config\n");
  goto out1;
 }






 if (!p_dev->irq)
  goto out1;


 card->iobase = ioport_map(p_dev->resource[0]->start,
    resource_size(p_dev->resource[0]));
 if (!card->iobase) {
  pr_err("error in ioport_map\n");
  ret = -EIO;
  goto out1;
 }

 ret = pcmcia_enable_device(p_dev);
 if (ret) {
  pr_err("error in pcmcia_enable_device\n");
  goto out2;
 }


 lbs_deb_cs("irq %d, io %pR", p_dev->irq, p_dev->resource[0]);





 card->align_regs = 0;

 card->model = get_model(p_dev->manf_id, p_dev->card_id);
 if (card->model == MODEL_UNKNOWN) {
  pr_err("unsupported manf_id 0x%04x / card_id 0x%04x\n",
         p_dev->manf_id, p_dev->card_id);
  ret = -ENODEV;
  goto out2;
 }


 prod_id = if_cs_read8(card, IF_CS_PRODUCT_ID);
 if (card->model == MODEL_8305) {
  card->align_regs = 1;
  if (prod_id < IF_CS_CF8305_B1_REV) {
   pr_err("8305 rev B0 and older are not supported\n");
   ret = -ENODEV;
   goto out2;
  }
 }

 if ((card->model == MODEL_8381) && prod_id < IF_CS_CF8381_B3_REV) {
  pr_err("8381 rev B2 and older are not supported\n");
  ret = -ENODEV;
  goto out2;
 }

 if ((card->model == MODEL_8385) && prod_id < IF_CS_CF8385_B1_REV) {
  pr_err("8385 rev B0 and older are not supported\n");
  ret = -ENODEV;
  goto out2;
 }


 priv = lbs_add_card(card, &p_dev->dev);
 if (IS_ERR(priv)) {
  ret = PTR_ERR(priv);
  goto out2;
 }


 card->priv = priv;
 priv->card = card;
 priv->hw_host_to_card = if_cs_host_to_card;
 priv->enter_deep_sleep = ((void*)0);
 priv->exit_deep_sleep = ((void*)0);
 priv->reset_deep_sleep_wakeup = ((void*)0);


 ret = lbs_get_firmware_async(priv, &p_dev->dev, card->model, fw_table,
         if_cs_prog_firmware);
 if (ret) {
  pr_err("failed to find firmware (%d)\n", ret);
  goto out3;
 }

 goto out;

out3:
 lbs_remove_card(priv);
out2:
 ioport_unmap(card->iobase);
out1:
 pcmcia_disable_device(p_dev);
out:
 return ret;
}
