
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct mtd_info {scalar_t__ size; scalar_t__ erasesize; struct docg3* priv; } ;
struct erase_info {scalar_t__ addr; scalar_t__ len; } ;
struct docg3 {TYPE_1__* cascade; int device_id; int reliable; } ;
struct TYPE_2__ {int lock; } ;


 int EINVAL ;
 int calc_block_sector (scalar_t__,int*,int*,int*,int*,int ) ;
 int doc_dbg (char*,scalar_t__,scalar_t__) ;
 int doc_erase_block (struct docg3*,int,int) ;
 int doc_set_device_id (struct docg3*,int ) ;
 int doc_set_reliable_mode (struct docg3*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int doc_erase(struct mtd_info *mtd, struct erase_info *info)
{
 struct docg3 *docg3 = mtd->priv;
 uint64_t len;
 int block0, block1, page, ret = 0, ofs = 0;

 doc_dbg("doc_erase(from=%lld, len=%lld\n", info->addr, info->len);

 calc_block_sector(info->addr + info->len, &block0, &block1, &page,
     &ofs, docg3->reliable);
 if (info->addr + info->len > mtd->size || page || ofs)
  return -EINVAL;

 calc_block_sector(info->addr, &block0, &block1, &page, &ofs,
     docg3->reliable);
 mutex_lock(&docg3->cascade->lock);
 doc_set_device_id(docg3, docg3->device_id);
 doc_set_reliable_mode(docg3);
 for (len = info->len; !ret && len > 0; len -= mtd->erasesize) {
  ret = doc_erase_block(docg3, block0, block1);
  block0 += 2;
  block1 += 2;
 }
 mutex_unlock(&docg3->cascade->lock);

 return ret;
}
