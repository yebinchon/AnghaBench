
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int __put_mtd_device (struct mtd_info*) ;
 int mtd_table_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void put_mtd_device(struct mtd_info *mtd)
{
 mutex_lock(&mtd_table_mutex);
 __put_mtd_device(mtd);
 mutex_unlock(&mtd_table_mutex);

}
