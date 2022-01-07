
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct softing {int dpram; int ** net; } ;
struct TYPE_2__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ARRAY_SIZE (int **) ;
 int iounmap (int ) ;
 int kfree (struct softing*) ;
 struct softing* platform_get_drvdata (struct platform_device*) ;
 int softing_card_shutdown (struct softing*) ;
 int softing_netdev_cleanup (int *) ;
 int softing_pdev_group ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int softing_pdev_remove(struct platform_device *pdev)
{
 struct softing *card = platform_get_drvdata(pdev);
 int j;


 softing_card_shutdown(card);

 for (j = 0; j < ARRAY_SIZE(card->net); ++j) {
  if (!card->net[j])
   continue;
  softing_netdev_cleanup(card->net[j]);
  card->net[j] = ((void*)0);
 }
 sysfs_remove_group(&pdev->dev.kobj, &softing_pdev_group);

 iounmap(card->dpram);
 kfree(card);
 return 0;
}
