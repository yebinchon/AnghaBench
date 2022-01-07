
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_geometry {int heads; int cylinders; scalar_t__ start; int sectors; } ;
struct block_device {int bd_disk; } ;


 int get_capacity (int ) ;

__attribute__((used)) static int ubiblock_getgeo(struct block_device *bdev, struct hd_geometry *geo)
{

 geo->heads = 1;
 geo->cylinders = 1;
 geo->sectors = get_capacity(bdev->bd_disk);
 geo->start = 0;
 return 0;
}
