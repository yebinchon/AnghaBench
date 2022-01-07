
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct block_device {TYPE_1__* bd_inode; int bd_dev; } ;
struct TYPE_4__ {char* name; int size; int erasesize; int writesize; int index; int owner; struct block2mtd_dev* priv; int _read; int _sync; int _write; int _erase; int flags; int type; int writebufsize; } ;
struct block2mtd_dev {int write_mutex; TYPE_2__ mtd; int list; struct block_device* blkdev; } ;
typedef int fmode_t ;
typedef int dev_t ;
struct TYPE_3__ {int i_size; } ;


 int FMODE_EXCL ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct block_device*) ;
 scalar_t__ MAJOR (int ) ;
 scalar_t__ MTD_BLOCK_MAJOR ;
 int MTD_CAP_RAM ;
 int MTD_RAM ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 int THIS_MODULE ;
 struct block_device* blkdev_get_by_dev (int ,int const,struct block2mtd_dev*) ;
 struct block_device* blkdev_get_by_path (char*,int const,struct block2mtd_dev*) ;
 int blkmtd_device_list ;
 int block2mtd_erase ;
 int block2mtd_free_device (struct block2mtd_dev*) ;
 int block2mtd_read ;
 int block2mtd_sync ;
 int block2mtd_write ;
 char* kasprintf (int ,char*,char*) ;
 struct block2mtd_dev* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int msleep (int) ;
 scalar_t__ mtd_device_register (TYPE_2__*,int *,int ) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int name_to_dev_t (char*) ;
 int pr_err (char*,...) ;
 int pr_info (char*,int ,char*,int,int) ;
 int strlen (char*) ;
 int wait_for_device_probe () ;

__attribute__((used)) static struct block2mtd_dev *add_device(char *devname, int erase_size,
  int timeout)
{

 int i;

 const fmode_t mode = FMODE_READ | FMODE_WRITE | FMODE_EXCL;
 struct block_device *bdev;
 struct block2mtd_dev *dev;
 char *name;

 if (!devname)
  return ((void*)0);

 dev = kzalloc(sizeof(struct block2mtd_dev), GFP_KERNEL);
 if (!dev)
  return ((void*)0);


 bdev = blkdev_get_by_path(devname, mode, dev);






 for (i = 0; IS_ERR(bdev) && i <= timeout; i++) {
  dev_t devt;

  if (i)





   msleep(1000);
  wait_for_device_probe();

  devt = name_to_dev_t(devname);
  if (!devt)
   continue;
  bdev = blkdev_get_by_dev(devt, mode, dev);
 }


 if (IS_ERR(bdev)) {
  pr_err("error: cannot open device %s\n", devname);
  goto err_free_block2mtd;
 }
 dev->blkdev = bdev;

 if (MAJOR(bdev->bd_dev) == MTD_BLOCK_MAJOR) {
  pr_err("attempting to use an MTD device as a block device\n");
  goto err_free_block2mtd;
 }

 if ((long)dev->blkdev->bd_inode->i_size % erase_size) {
  pr_err("erasesize must be a divisor of device size\n");
  goto err_free_block2mtd;
 }

 mutex_init(&dev->write_mutex);



 name = kasprintf(GFP_KERNEL, "block2mtd: %s", devname);
 if (!name)
  goto err_destroy_mutex;

 dev->mtd.name = name;

 dev->mtd.size = dev->blkdev->bd_inode->i_size & PAGE_MASK;
 dev->mtd.erasesize = erase_size;
 dev->mtd.writesize = 1;
 dev->mtd.writebufsize = PAGE_SIZE;
 dev->mtd.type = MTD_RAM;
 dev->mtd.flags = MTD_CAP_RAM;
 dev->mtd._erase = block2mtd_erase;
 dev->mtd._write = block2mtd_write;
 dev->mtd._sync = block2mtd_sync;
 dev->mtd._read = block2mtd_read;
 dev->mtd.priv = dev;
 dev->mtd.owner = THIS_MODULE;

 if (mtd_device_register(&dev->mtd, ((void*)0), 0)) {

  goto err_destroy_mutex;
 }

 list_add(&dev->list, &blkmtd_device_list);
 pr_info("mtd%d: [%s] erase_size = %dKiB [%d]\n",
  dev->mtd.index,
  dev->mtd.name + strlen("block2mtd: "),
  dev->mtd.erasesize >> 10, dev->mtd.erasesize);
 return dev;

err_destroy_mutex:
 mutex_destroy(&dev->write_mutex);
err_free_block2mtd:
 block2mtd_free_device(dev);
 return ((void*)0);
}
