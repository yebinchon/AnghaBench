
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int syncp; } ;
struct TYPE_4__ {int lock; int list; } ;
struct slic_device {TYPE_3__* pdev; TYPE_2__ stats; TYPE_1__ upr_list; int link_lock; int upper_lock; } ;
struct TYPE_6__ {int dev; } ;


 int INIT_LIST_HEAD (int *) ;
 int dev_err (int *,char*) ;
 int slic_card_reset (struct slic_device*) ;
 int slic_free_shmem (struct slic_device*) ;
 int slic_init_shmem (struct slic_device*) ;
 int slic_load_firmware (struct slic_device*) ;
 int slic_read_eeprom (struct slic_device*) ;
 int spin_lock_init (int *) ;
 int u64_stats_init (int *) ;

__attribute__((used)) static int slic_init(struct slic_device *sdev)
{
 int err;

 spin_lock_init(&sdev->upper_lock);
 spin_lock_init(&sdev->link_lock);
 INIT_LIST_HEAD(&sdev->upr_list.list);
 spin_lock_init(&sdev->upr_list.lock);
 u64_stats_init(&sdev->stats.syncp);

 slic_card_reset(sdev);

 err = slic_load_firmware(sdev);
 if (err) {
  dev_err(&sdev->pdev->dev, "failed to load firmware\n");
  return err;
 }


 err = slic_init_shmem(sdev);
 if (err) {
  dev_err(&sdev->pdev->dev, "failed to init shared memory\n");
  return err;
 }

 err = slic_read_eeprom(sdev);
 if (err) {
  dev_err(&sdev->pdev->dev, "failed to read eeprom\n");
  goto free_sm;
 }

 slic_card_reset(sdev);
 slic_free_shmem(sdev);

 return 0;
free_sm:
 slic_free_shmem(sdev);

 return err;
}
