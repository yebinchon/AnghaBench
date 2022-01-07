
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partition {int cylinders; } ;
struct mtd_blktrans_dev {int dummy; } ;
struct hd_geometry {int heads; int cylinders; int sectors; } ;


 int SECTORS_PER_TRACK ;

__attribute__((used)) static int rfd_ftl_getgeo(struct mtd_blktrans_dev *dev, struct hd_geometry *geo)
{
 struct partition *part = (struct partition*)dev;

 geo->heads = 1;
 geo->sectors = SECTORS_PER_TRACK;
 geo->cylinders = part->cylinders;

 return 0;
}
