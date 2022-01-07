
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_bdi; TYPE_1__* s_mtd; int s_dev; } ;
struct fs_context {TYPE_1__* sget_key; } ;
struct TYPE_2__ {int index; } ;


 int MKDEV (int ,int ) ;
 int MTD_BLOCK_MAJOR ;
 int bdi_get (int ) ;
 int mtd_bdi ;

__attribute__((used)) static int mtd_set_super(struct super_block *sb, struct fs_context *fc)
{
 sb->s_mtd = fc->sget_key;
 sb->s_dev = MKDEV(MTD_BLOCK_MAJOR, sb->s_mtd->index);
 sb->s_bdi = bdi_get(mtd_bdi);
 return 0;
}
