
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_geometry {int cylinders; int heads; int sectors; } ;
struct block_device {int bd_disk; } ;


 int get_capacity (int ) ;

__attribute__((used)) static int
mmc_blk_getgeo(struct block_device *bdev, struct hd_geometry *geo)
{
 geo->cylinders = get_capacity(bdev->bd_disk) / (4 * 16);
 geo->heads = 4;
 geo->sectors = 16;
 return 0;
}
