
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {struct map_info* priv; } ;
struct map_info {struct lpddr_private* fldrv_priv; } ;
struct lpddr_private {int chipshift; int * chips; TYPE_1__* qinfo; } ;
struct kvec {scalar_t__ iov_len; } ;
typedef int loff_t ;
struct TYPE_2__ {int BufSizeShift; } ;


 int cond_resched () ;
 int do_write_buffer (struct map_info*,int *,unsigned long,struct kvec const**,unsigned long*,int) ;

__attribute__((used)) static int lpddr_writev(struct mtd_info *mtd, const struct kvec *vecs,
    unsigned long count, loff_t to, size_t *retlen)
{
 struct map_info *map = mtd->priv;
 struct lpddr_private *lpddr = map->fldrv_priv;
 int ret = 0;
 int chipnum;
 unsigned long ofs, vec_seek, i;
 int wbufsize = 1 << lpddr->qinfo->BufSizeShift;
 size_t len = 0;

 for (i = 0; i < count; i++)
  len += vecs[i].iov_len;

 if (!len)
  return 0;

 chipnum = to >> lpddr->chipshift;

 ofs = to;
 vec_seek = 0;

 do {

  int size = wbufsize - (ofs & (wbufsize-1));

  if (size > len)
   size = len;

  ret = do_write_buffer(map, &lpddr->chips[chipnum],
       ofs, &vecs, &vec_seek, size);
  if (ret)
   return ret;

  ofs += size;
  (*retlen) += size;
  len -= size;



  cond_resched();

 } while (len);

 return 0;
}
