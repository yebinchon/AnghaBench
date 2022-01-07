
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sdio_func {TYPE_2__* card; int dev; int device; int vendor; int class; } ;
struct sdio_device_id {int dummy; } ;
struct lbs_private {int is_polling; int power_restore; int power_save; int reset_card; int reset_deep_sleep_wakeup; int exit_deep_sleep; int enter_deep_sleep; int hw_host_to_card; struct if_sdio_packet* card; } ;
struct if_sdio_packet {unsigned int model; struct if_sdio_packet* next; struct if_sdio_packet* packets; int workqueue; struct lbs_private* priv; scalar_t__ ioport; int pwron_waitq; int packet_worker; int lock; int scratch_reg; struct sdio_func* func; } ;
struct if_sdio_card {unsigned int model; struct if_sdio_card* next; struct if_sdio_card* packets; int workqueue; struct lbs_private* priv; scalar_t__ ioport; int pwron_waitq; int packet_worker; int lock; int scratch_reg; struct sdio_func* func; } ;
struct TYPE_7__ {int model; } ;
struct TYPE_6__ {int num_info; TYPE_1__* host; int * info; } ;
struct TYPE_5__ {int caps; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IF_SDIO_FW_STATUS ;
 int IF_SDIO_SCRATCH ;
 int IF_SDIO_SCRATCH_OLD ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct lbs_private*) ;
 int MMC_CAP_SDIO_IRQ ;



 int PTR_ERR (struct lbs_private*) ;
 int WQ_MEM_RECLAIM ;
 int alloc_workqueue (char*,int ,int ) ;
 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;
 TYPE_3__* fw_table ;
 int if_sdio_enter_deep_sleep ;
 int if_sdio_exit_deep_sleep ;
 int if_sdio_host_to_card ;
 int if_sdio_host_to_card_worker ;
 int if_sdio_power_on (struct if_sdio_packet*) ;
 int if_sdio_power_restore ;
 int if_sdio_power_save ;
 int if_sdio_reset_card ;
 int if_sdio_reset_deep_sleep_wakeup ;
 int init_waitqueue_head (int *) ;
 int kfree (struct if_sdio_packet*) ;
 struct if_sdio_packet* kzalloc (int,int ) ;
 struct lbs_private* lbs_add_card (struct if_sdio_packet*,int *) ;
 int lbs_deb_sdio (char*,int ,int ,int ,unsigned int,unsigned int) ;
 int lbs_remove_card (struct lbs_private*) ;
 int pr_err (char*,...) ;
 int sdio_set_drvdata (struct sdio_func*,struct if_sdio_packet*) ;
 int spin_lock_init (int *) ;
 int sscanf (int ,char*,unsigned int*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int if_sdio_probe(struct sdio_func *func,
  const struct sdio_device_id *id)
{
 struct if_sdio_card *card;
 struct lbs_private *priv;
 int ret, i;
 unsigned int model;
 struct if_sdio_packet *packet;

 for (i = 0;i < func->card->num_info;i++) {
  if (sscanf(func->card->info[i],
    "802.11 SDIO ID: %x", &model) == 1)
   break;
  if (sscanf(func->card->info[i],
    "ID: %x", &model) == 1)
   break;
  if (!strcmp(func->card->info[i], "IBIS Wireless SDIO Card")) {
   model = 130;
   break;
  }
 }

 if (i == func->card->num_info) {
  pr_err("unable to identify card model\n");
  return -ENODEV;
 }

 card = kzalloc(sizeof(struct if_sdio_card), GFP_KERNEL);
 if (!card)
  return -ENOMEM;

 card->func = func;
 card->model = model;

 switch (card->model) {
 case 130:
  card->scratch_reg = IF_SDIO_SCRATCH_OLD;
  break;
 case 129:
  card->scratch_reg = IF_SDIO_SCRATCH;
  break;
 case 128:
 default:
  card->scratch_reg = IF_SDIO_FW_STATUS;
  break;
 }

 spin_lock_init(&card->lock);
 card->workqueue = alloc_workqueue("libertas_sdio", WQ_MEM_RECLAIM, 0);
 INIT_WORK(&card->packet_worker, if_sdio_host_to_card_worker);
 init_waitqueue_head(&card->pwron_waitq);


 for (i = 0; i < ARRAY_SIZE(fw_table); i++) {
  if (card->model == fw_table[i].model)
   break;
 }
 if (i == ARRAY_SIZE(fw_table)) {
  pr_err("unknown card model 0x%x\n", card->model);
  ret = -ENODEV;
  goto free;
 }

 sdio_set_drvdata(func, card);

 lbs_deb_sdio("class = 0x%X, vendor = 0x%X, "
   "device = 0x%X, model = 0x%X, ioport = 0x%X\n",
   func->class, func->vendor, func->device,
   model, (unsigned)card->ioport);


 priv = lbs_add_card(card, &func->dev);
 if (IS_ERR(priv)) {
  ret = PTR_ERR(priv);
  goto free;
 }

 card->priv = priv;

 priv->card = card;
 priv->hw_host_to_card = if_sdio_host_to_card;
 priv->enter_deep_sleep = if_sdio_enter_deep_sleep;
 priv->exit_deep_sleep = if_sdio_exit_deep_sleep;
 priv->reset_deep_sleep_wakeup = if_sdio_reset_deep_sleep_wakeup;
 priv->reset_card = if_sdio_reset_card;
 priv->power_save = if_sdio_power_save;
 priv->power_restore = if_sdio_power_restore;
 priv->is_polling = !(func->card->host->caps & MMC_CAP_SDIO_IRQ);
 ret = if_sdio_power_on(card);
 if (ret)
  goto err_activate_card;

out:
 return ret;

err_activate_card:
 flush_workqueue(card->workqueue);
 lbs_remove_card(priv);
free:
 destroy_workqueue(card->workqueue);
 while (card->packets) {
  packet = card->packets;
  card->packets = card->packets->next;
  kfree(packet);
 }

 kfree(card);

 goto out;
}
