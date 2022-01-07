
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mspro_block_data {int cylinders; int sectors_per_track; int heads; } ;
struct hd_geometry {int cylinders; int sectors; int heads; } ;
struct block_device {TYPE_1__* bd_disk; } ;
struct TYPE_2__ {struct mspro_block_data* private_data; } ;



__attribute__((used)) static int mspro_block_bd_getgeo(struct block_device *bdev,
     struct hd_geometry *geo)
{
 struct mspro_block_data *msb = bdev->bd_disk->private_data;

 geo->heads = msb->heads;
 geo->sectors = msb->sectors_per_track;
 geo->cylinders = msb->cylinders;

 return 0;
}
