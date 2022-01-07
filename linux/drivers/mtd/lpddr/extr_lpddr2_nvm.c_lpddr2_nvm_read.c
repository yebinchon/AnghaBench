
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {struct map_info* priv; } ;
struct map_info {int dummy; } ;
typedef int loff_t ;


 int lpdd2_nvm_mutex ;
 int map_copy_from (struct map_info*,int *,int ,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lpddr2_nvm_read(struct mtd_info *mtd, loff_t start_add,
    size_t len, size_t *retlen, u_char *buf)
{
 struct map_info *map = mtd->priv;

 mutex_lock(&lpdd2_nvm_mutex);

 *retlen = len;

 map_copy_from(map, buf, start_add, *retlen);

 mutex_unlock(&lpdd2_nvm_mutex);
 return 0;
}
