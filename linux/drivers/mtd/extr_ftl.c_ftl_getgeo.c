
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct mtd_blktrans_dev {int dummy; } ;
struct hd_geometry {int heads; int sectors; int cylinders; } ;
struct TYPE_3__ {int FormattedSize; } ;
struct TYPE_4__ {TYPE_1__ header; } ;
typedef TYPE_2__ partition_t ;


 int SECTOR_SIZE ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int ftl_getgeo(struct mtd_blktrans_dev *dev, struct hd_geometry *geo)
{
 partition_t *part = (void *)dev;
 u_long sect;


 sect = le32_to_cpu(part->header.FormattedSize)/SECTOR_SIZE;

 geo->heads = 1;
 geo->sectors = 8;
 geo->cylinders = sect >> 3;

 return 0;
}
