
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm_ftl {int cylinders; int sectors; int heads; } ;
struct mtd_blktrans_dev {struct sm_ftl* priv; } ;
struct hd_geometry {int cylinders; int sectors; int heads; } ;



__attribute__((used)) static int sm_getgeo(struct mtd_blktrans_dev *dev, struct hd_geometry *geo)
{
 struct sm_ftl *ftl = dev->priv;
 geo->heads = ftl->heads;
 geo->sectors = ftl->sectors;
 geo->cylinders = ftl->cylinders;
 return 0;
}
