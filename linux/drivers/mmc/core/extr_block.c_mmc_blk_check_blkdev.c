
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {struct block_device* bd_contains; } ;


 int CAP_SYS_RAWIO ;
 int EPERM ;
 int capable (int ) ;

__attribute__((used)) static int mmc_blk_check_blkdev(struct block_device *bdev)
{





 if ((!capable(CAP_SYS_RAWIO)) || (bdev != bdev->bd_contains))
  return -EPERM;
 return 0;
}
