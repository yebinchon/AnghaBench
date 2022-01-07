
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int IO_ADDR_W; } ;
struct TYPE_5__ {TYPE_1__ legacy; } ;
struct omap_nand_info {TYPE_3__* ops; TYPE_2__ nand; } ;
struct mtd_info {int dummy; } ;
struct TYPE_6__ {int (* nand_writebuffer_empty ) () ;} ;


 int iowrite8 (int ,int ) ;
 struct omap_nand_info* mtd_to_omap (struct mtd_info*) ;
 int stub1 () ;

__attribute__((used)) static void omap_write_buf8(struct mtd_info *mtd, const u_char *buf, int len)
{
 struct omap_nand_info *info = mtd_to_omap(mtd);
 u_char *p = (u_char *)buf;
 bool status;

 while (len--) {
  iowrite8(*p++, info->nand.legacy.IO_ADDR_W);

  do {
   status = info->ops->nand_writebuffer_empty();
  } while (!status);
 }
}
