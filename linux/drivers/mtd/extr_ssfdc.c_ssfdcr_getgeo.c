
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssfdcr_record {int cylinders; int sectors; int heads; } ;
struct mtd_blktrans_dev {int dummy; } ;
struct hd_geometry {int cylinders; int sectors; int heads; } ;


 int pr_debug (char*,int ,int ,int ) ;

__attribute__((used)) static int ssfdcr_getgeo(struct mtd_blktrans_dev *dev, struct hd_geometry *geo)
{
 struct ssfdcr_record *ssfdc = (struct ssfdcr_record *)dev;

 pr_debug("SSFDC_RO: ssfdcr_getgeo() C=%d, H=%d, S=%d\n",
   ssfdc->cylinders, ssfdc->heads, ssfdc->sectors);

 geo->heads = ssfdc->heads;
 geo->sectors = ssfdc->sectors;
 geo->cylinders = ssfdc->cylinders;

 return 0;
}
