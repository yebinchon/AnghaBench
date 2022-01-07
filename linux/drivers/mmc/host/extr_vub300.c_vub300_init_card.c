
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vub300_mmc_host {TYPE_1__* udev; } ;
struct mmc_host {int dummy; } ;
struct mmc_card {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*) ;
 struct vub300_mmc_host* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static void vub300_init_card(struct mmc_host *mmc, struct mmc_card *card)
{
 struct vub300_mmc_host *vub300 = mmc_priv(mmc);
 dev_info(&vub300->udev->dev, "NO host QUIRKS for this card\n");
}
