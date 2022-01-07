
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_9__ {char* init_name; int release; int * parent; int devt; int * bus; } ;
struct TYPE_10__ {int owner; } ;
struct mmc_rpmb_data {int id; unsigned int part_index; TYPE_2__ dev; int node; TYPE_5__ chrdev; struct mmc_blk_data* md; } ;
struct mmc_card {int dev; TYPE_1__* host; } ;
struct mmc_blk_data {int rpmbs; } ;
typedef scalar_t__ sector_t ;
typedef int rpmb_name ;
typedef int cap_str ;
struct TYPE_8__ {int index; } ;


 int DISK_NAME_LEN ;
 int ENOMEM ;
 int EXT_CSD_PART_CONFIG_ACC_RPMB ;
 int GFP_KERNEL ;
 int MAJOR (int ) ;
 int MKDEV (int ,int) ;
 int STRING_UNITS_2 ;
 int THIS_MODULE ;
 int cdev_device_add (TYPE_5__*,TYPE_2__*) ;
 int cdev_init (TYPE_5__*,int *) ;
 int dev_set_drvdata (TYPE_2__*,struct mmc_rpmb_data*) ;
 int device_initialize (TYPE_2__*) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 struct mmc_rpmb_data* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int max_devices ;
 int mmc_blk_rpmb_device_release ;
 int mmc_card_id (struct mmc_card*) ;
 int mmc_card_name (struct mmc_card*) ;
 int mmc_rpmb_bus_type ;
 int mmc_rpmb_devt ;
 int mmc_rpmb_fileops ;
 int mmc_rpmb_ida ;
 int pr_err (char*,char*) ;
 int pr_info (char*,char*,int ,int ,int ,char*,int ,int) ;
 int put_device (TYPE_2__*) ;
 int snprintf (char*,int,char*,int,char const*) ;
 int string_get_size (int ,int,int ,char*,int) ;

__attribute__((used)) static int mmc_blk_alloc_rpmb_part(struct mmc_card *card,
       struct mmc_blk_data *md,
       unsigned int part_index,
       sector_t size,
       const char *subname)
{
 int devidx, ret;
 char rpmb_name[DISK_NAME_LEN];
 char cap_str[10];
 struct mmc_rpmb_data *rpmb;


 devidx = ida_simple_get(&mmc_rpmb_ida, 0, max_devices, GFP_KERNEL);
 if (devidx < 0)
  return devidx;

 rpmb = kzalloc(sizeof(*rpmb), GFP_KERNEL);
 if (!rpmb) {
  ida_simple_remove(&mmc_rpmb_ida, devidx);
  return -ENOMEM;
 }

 snprintf(rpmb_name, sizeof(rpmb_name),
   "mmcblk%u%s", card->host->index, subname ? subname : "");

 rpmb->id = devidx;
 rpmb->part_index = part_index;
 rpmb->dev.init_name = rpmb_name;
 rpmb->dev.bus = &mmc_rpmb_bus_type;
 rpmb->dev.devt = MKDEV(MAJOR(mmc_rpmb_devt), rpmb->id);
 rpmb->dev.parent = &card->dev;
 rpmb->dev.release = mmc_blk_rpmb_device_release;
 device_initialize(&rpmb->dev);
 dev_set_drvdata(&rpmb->dev, rpmb);
 rpmb->md = md;

 cdev_init(&rpmb->chrdev, &mmc_rpmb_fileops);
 rpmb->chrdev.owner = THIS_MODULE;
 ret = cdev_device_add(&rpmb->chrdev, &rpmb->dev);
 if (ret) {
  pr_err("%s: could not add character device\n", rpmb_name);
  goto out_put_device;
 }

 list_add(&rpmb->node, &md->rpmbs);

 string_get_size((u64)size, 512, STRING_UNITS_2,
   cap_str, sizeof(cap_str));

 pr_info("%s: %s %s partition %u %s, chardev (%d:%d)\n",
  rpmb_name, mmc_card_id(card),
  mmc_card_name(card), EXT_CSD_PART_CONFIG_ACC_RPMB, cap_str,
  MAJOR(mmc_rpmb_devt), rpmb->id);

 return 0;

out_put_device:
 put_device(&rpmb->dev);
 return ret;
}
