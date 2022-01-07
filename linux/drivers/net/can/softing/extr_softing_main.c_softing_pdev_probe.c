
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct softing_priv {int index; } ;
struct softing_platform_data {int nbus; int name; int freq; } ;
struct TYPE_10__ {int * chip; int freq; } ;
struct TYPE_9__ {int nr; } ;
struct TYPE_8__ {int lock; } ;
struct softing {int dpram; struct net_device** net; struct softing_platform_data const* pdat; struct platform_device* pdev; TYPE_3__ id; TYPE_2__ irq; int dpram_size; int dpram_phys; int spin; TYPE_1__ fw; } ;
struct resource {int start; } ;
struct TYPE_11__ {int kobj; } ;
struct platform_device {TYPE_4__ dev; } ;
struct net_device {int dev_id; } ;


 int ARRAY_SIZE (struct net_device**) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int dev_alert (TYPE_4__*,char*,...) ;
 struct softing_platform_data* dev_get_platdata (TYPE_4__*) ;
 int dev_info (TYPE_4__*,char*,int ) ;
 int dev_warn (TYPE_4__*,char*,...) ;
 int free_candev (struct net_device*) ;
 int ioremap_nocache (int ,int ) ;
 int iounmap (int ) ;
 int kfree (struct softing*) ;
 struct softing* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 struct softing_priv* netdev_priv (struct net_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct softing*) ;
 int resource_size (struct resource*) ;
 int softing_card_boot (struct softing*) ;
 int softing_card_shutdown (struct softing*) ;
 int softing_netdev_cleanup (struct net_device*) ;
 struct net_device* softing_netdev_create (struct softing*,int ) ;
 int softing_netdev_register (struct net_device*) ;
 int softing_pdev_group ;
 int spin_lock_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int softing_pdev_probe(struct platform_device *pdev)
{
 const struct softing_platform_data *pdat = dev_get_platdata(&pdev->dev);
 struct softing *card;
 struct net_device *netdev;
 struct softing_priv *priv;
 struct resource *pres;
 int ret;
 int j;

 if (!pdat) {
  dev_warn(&pdev->dev, "no platform data\n");
  return -EINVAL;
 }
 if (pdat->nbus > ARRAY_SIZE(card->net)) {
  dev_warn(&pdev->dev, "%u nets??\n", pdat->nbus);
  return -EINVAL;
 }

 card = kzalloc(sizeof(*card), GFP_KERNEL);
 if (!card)
  return -ENOMEM;
 card->pdat = pdat;
 card->pdev = pdev;
 platform_set_drvdata(pdev, card);
 mutex_init(&card->fw.lock);
 spin_lock_init(&card->spin);

 ret = -EINVAL;
 pres = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!pres)
  goto platform_resource_failed;
 card->dpram_phys = pres->start;
 card->dpram_size = resource_size(pres);
 card->dpram = ioremap_nocache(card->dpram_phys, card->dpram_size);
 if (!card->dpram) {
  dev_alert(&card->pdev->dev, "dpram ioremap failed\n");
  goto ioremap_failed;
 }

 pres = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (pres)
  card->irq.nr = pres->start;


 ret = softing_card_boot(card);
 if (ret < 0) {
  dev_alert(&pdev->dev, "failed to boot\n");
  goto boot_failed;
 }


 card->id.freq = card->pdat->freq;

 ret = sysfs_create_group(&pdev->dev.kobj, &softing_pdev_group);
 if (ret < 0) {
  dev_alert(&card->pdev->dev, "sysfs failed\n");
  goto sysfs_failed;
 }

 for (j = 0; j < ARRAY_SIZE(card->net); ++j) {
  card->net[j] = netdev =
   softing_netdev_create(card, card->id.chip[j]);
  if (!netdev) {
   dev_alert(&pdev->dev, "failed to make can[%i]", j);
   ret = -ENOMEM;
   goto netdev_failed;
  }
  netdev->dev_id = j;
  priv = netdev_priv(card->net[j]);
  priv->index = j;
  ret = softing_netdev_register(netdev);
  if (ret) {
   free_candev(netdev);
   card->net[j] = ((void*)0);
   dev_alert(&card->pdev->dev,
     "failed to register can[%i]\n", j);
   goto netdev_failed;
  }
 }
 dev_info(&card->pdev->dev, "%s ready.\n", card->pdat->name);
 return 0;

netdev_failed:
 for (j = 0; j < ARRAY_SIZE(card->net); ++j) {
  if (!card->net[j])
   continue;
  softing_netdev_cleanup(card->net[j]);
 }
 sysfs_remove_group(&pdev->dev.kobj, &softing_pdev_group);
sysfs_failed:
 softing_card_shutdown(card);
boot_failed:
 iounmap(card->dpram);
ioremap_failed:
platform_resource_failed:
 kfree(card);
 return ret;
}
