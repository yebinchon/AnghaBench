
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_blktrans_dev {int dummy; } ;
struct hd_geometry {int cylinders; int sectors; int heads; } ;
struct NFTLrecord {int cylinders; int sectors; int heads; } ;



__attribute__((used)) static int nftl_getgeo(struct mtd_blktrans_dev *dev, struct hd_geometry *geo)
{
 struct NFTLrecord *nftl = (void *)dev;

 geo->heads = nftl->heads;
 geo->sectors = nftl->sectors;
 geo->cylinders = nftl->cylinders;

 return 0;
}
