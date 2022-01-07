
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {int size; int erasesize; int writesize; int numchips; int chipshift; struct flchip* chips; TYPE_1__* qinfo; int _unpoint; int _point; int _unlock; int _lock; int _writev; int _write; int _erase; int flags; void* type; int _read; struct map_info* priv; } ;
struct map_info {struct mtd_info* fldrv_priv; } ;
struct lpddr_private {int size; int erasesize; int writesize; int numchips; int chipshift; struct flchip* chips; TYPE_1__* qinfo; int _unpoint; int _point; int _unlock; int _lock; int _writev; int _write; int _erase; int flags; void* type; int _read; struct map_info* priv; } ;
struct flchip_shared {int lock; int * erasing; int writing; } ;
struct flchip {int start; int mutex; int wq; struct flchip_shared* priv; int state; int oldstate; } ;
struct TYPE_2__ {int DevSizeShift; int UniformBlockSizeShift; int BufSizeShift; int HWPartsNum; } ;


 int FL_READY ;
 int GFP_KERNEL ;
 int MTD_BIT_WRITEABLE ;
 int MTD_CAP_NORFLASH ;
 void* MTD_NORFLASH ;
 int init_waitqueue_head (int *) ;
 int kfree (struct mtd_info*) ;
 struct flchip_shared* kmalloc_array (int,int,int ) ;
 struct mtd_info* kzalloc (int,int ) ;
 int lpddr_erase ;
 int lpddr_lock ;
 int lpddr_point ;
 int lpddr_read ;
 int lpddr_unlock ;
 int lpddr_unpoint ;
 int lpddr_write_buffers ;
 int lpddr_writev ;
 scalar_t__ map_is_linear (struct map_info*) ;
 int mutex_init (int *) ;

struct mtd_info *lpddr_cmdset(struct map_info *map)
{
 struct lpddr_private *lpddr = map->fldrv_priv;
 struct flchip_shared *shared;
 struct flchip *chip;
 struct mtd_info *mtd;
 int numchips;
 int i, j;

 mtd = kzalloc(sizeof(*mtd), GFP_KERNEL);
 if (!mtd)
  return ((void*)0);
 mtd->priv = map;
 mtd->type = MTD_NORFLASH;


 mtd->_read = lpddr_read;
 mtd->type = MTD_NORFLASH;
 mtd->flags = MTD_CAP_NORFLASH;
 mtd->flags &= ~MTD_BIT_WRITEABLE;
 mtd->_erase = lpddr_erase;
 mtd->_write = lpddr_write_buffers;
 mtd->_writev = lpddr_writev;
 mtd->_lock = lpddr_lock;
 mtd->_unlock = lpddr_unlock;
 if (map_is_linear(map)) {
  mtd->_point = lpddr_point;
  mtd->_unpoint = lpddr_unpoint;
 }
 mtd->size = 1 << lpddr->qinfo->DevSizeShift;
 mtd->erasesize = 1 << lpddr->qinfo->UniformBlockSizeShift;
 mtd->writesize = 1 << lpddr->qinfo->BufSizeShift;

 shared = kmalloc_array(lpddr->numchips, sizeof(struct flchip_shared),
      GFP_KERNEL);
 if (!shared) {
  kfree(lpddr);
  kfree(mtd);
  return ((void*)0);
 }

 chip = &lpddr->chips[0];
 numchips = lpddr->numchips / lpddr->qinfo->HWPartsNum;
 for (i = 0; i < numchips; i++) {
  shared[i].writing = shared[i].erasing = ((void*)0);
  mutex_init(&shared[i].lock);
  for (j = 0; j < lpddr->qinfo->HWPartsNum; j++) {
   *chip = lpddr->chips[i];
   chip->start += j << lpddr->chipshift;
   chip->oldstate = chip->state = FL_READY;
   chip->priv = &shared[i];


   init_waitqueue_head(&chip->wq);
   mutex_init(&chip->mutex);
   chip++;
  }
 }

 return mtd;
}
