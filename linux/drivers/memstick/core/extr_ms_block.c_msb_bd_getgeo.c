
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hd_geometry {int dummy; } ;
struct msb_data {struct hd_geometry geometry; } ;
struct block_device {TYPE_1__* bd_disk; } ;
struct TYPE_2__ {struct msb_data* private_data; } ;



__attribute__((used)) static int msb_bd_getgeo(struct block_device *bdev,
     struct hd_geometry *geo)
{
 struct msb_data *msb = bdev->bd_disk->private_data;
 *geo = msb->geometry;
 return 0;
}
