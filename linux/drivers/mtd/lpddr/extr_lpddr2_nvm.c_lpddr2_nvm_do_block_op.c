
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ u_long ;
typedef int u_char ;
struct mtd_info {scalar_t__ erasesize; struct map_info* priv; } ;
struct map_info {int dummy; } ;
typedef scalar_t__ loff_t ;


 int lpdd2_nvm_mutex ;
 int lpddr2_nvm_do_op (struct map_info*,int ,int,scalar_t__,scalar_t__,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ow_disable (struct map_info*) ;
 int ow_enable (struct map_info*) ;

__attribute__((used)) static int lpddr2_nvm_do_block_op(struct mtd_info *mtd, loff_t start_add,
 uint64_t len, u_char block_op)
{
 struct map_info *map = mtd->priv;
 u_long add, end_add;
 int ret = 0;

 mutex_lock(&lpdd2_nvm_mutex);

 ow_enable(map);

 add = start_add;
 end_add = add + len;

 do {
  ret = lpddr2_nvm_do_op(map, block_op, 0x00, add, add, ((void*)0));
  if (ret)
   goto out;
  add += mtd->erasesize;
 } while (add < end_add);

out:
 ow_disable(map);
 mutex_unlock(&lpdd2_nvm_mutex);
 return ret;
}
