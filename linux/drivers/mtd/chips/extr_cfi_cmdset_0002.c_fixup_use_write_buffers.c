
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {int _write; struct map_info* priv; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct cfi_private {TYPE_1__* cfiq; } ;
struct TYPE_2__ {scalar_t__ BufWriteTimeoutTyp; } ;


 int cfi_amdstd_write_buffers ;
 int pr_debug (char*) ;

__attribute__((used)) static void fixup_use_write_buffers(struct mtd_info *mtd)
{
 struct map_info *map = mtd->priv;
 struct cfi_private *cfi = map->fldrv_priv;
 if (cfi->cfiq->BufWriteTimeoutTyp) {
  pr_debug("Using buffer write method\n");
  mtd->_write = cfi_amdstd_write_buffers;
 }
}
