
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vmupart {int dummy; } ;
struct mtd_info {int dummy; } ;
struct memcard {unsigned long partitions; unsigned long blocklen; unsigned long writecnt; unsigned long readcnt; unsigned long removeable; struct memcard* parts; struct memcard* mtd; scalar_t__ partition; } ;
struct TYPE_2__ {int * function_data; int function; } ;
struct maple_device {int unit; int port; int dev; int busy; int maple_wait; TYPE_1__ devinfo; } ;


 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int MAPLE_COMMAND_GETMINFO ;
 int MAPLE_FUNC_MEMCARD ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 unsigned long be32_to_cpu (int ) ;
 int dev_err (int *,char*,int ,int ,int) ;
 int dev_notice (int *,char*,int ,int ) ;
 int hweight_long (unsigned long) ;
 int kfree (struct memcard*) ;
 struct memcard* kmalloc (int,int ) ;
 void* kmalloc_array (unsigned long,int,int ) ;
 int maple_add_packet (struct maple_device*,int ,int ,int,int *) ;
 int maple_getcond_callback (struct maple_device*,int ,int ,int ) ;
 int maple_set_drvdata (struct maple_device*,struct memcard*) ;
 int vmu_queryblocks ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int vmu_connect(struct maple_device *mdev)
{
 unsigned long test_flash_data, basic_flash_data;
 int c, error;
 struct memcard *card;
 u32 partnum = 0;

 test_flash_data = be32_to_cpu(mdev->devinfo.function);



 c = hweight_long(test_flash_data);

 basic_flash_data = be32_to_cpu(mdev->devinfo.function_data[c - 1]);

 card = kmalloc(sizeof(struct memcard), GFP_KERNEL);
 if (!card) {
  error = -ENOMEM;
  goto fail_nomem;
 }

 card->partitions = (basic_flash_data >> 24 & 0xFF) + 1;
 card->blocklen = ((basic_flash_data >> 16 & 0xFF) + 1) << 5;
 card->writecnt = basic_flash_data >> 12 & 0xF;
 card->readcnt = basic_flash_data >> 8 & 0xF;
 card->removeable = basic_flash_data >> 7 & 1;

 card->partition = 0;





 card->parts = kmalloc_array(card->partitions, sizeof(struct vmupart),
        GFP_KERNEL);
 if (!card->parts) {
  error = -ENOMEM;
  goto fail_partitions;
 }

 card->mtd = kmalloc_array(card->partitions, sizeof(struct mtd_info),
      GFP_KERNEL);
 if (!card->mtd) {
  error = -ENOMEM;
  goto fail_mtd_info;
 }

 maple_set_drvdata(mdev, card);






 maple_getcond_callback(mdev, vmu_queryblocks, 0,
  MAPLE_FUNC_MEMCARD);


 if (atomic_read(&mdev->busy) == 1) {
  wait_event_interruptible_timeout(mdev->maple_wait,
   atomic_read(&mdev->busy) == 0, HZ);
  if (atomic_read(&mdev->busy) == 1) {
   dev_notice(&mdev->dev, "VMU at (%d, %d) is busy\n",
    mdev->port, mdev->unit);
   error = -EAGAIN;
   goto fail_device_busy;
  }
 }

 atomic_set(&mdev->busy, 1);





 error = maple_add_packet(mdev, MAPLE_FUNC_MEMCARD,
  MAPLE_COMMAND_GETMINFO, 2, &partnum);
 if (error) {
  dev_err(&mdev->dev, "Could not lock VMU at (%d, %d)"
   " error is 0x%X\n", mdev->port, mdev->unit, error);
  goto fail_mtd_info;
 }
 return 0;

fail_device_busy:
 kfree(card->mtd);
fail_mtd_info:
 kfree(card->parts);
fail_partitions:
 kfree(card);
fail_nomem:
 return error;
}
