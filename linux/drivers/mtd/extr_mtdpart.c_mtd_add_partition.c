
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_partition {char const* name; long long size; long long offset; } ;
struct mtd_part {int list; int mtd; } ;
struct mtd_info {long long size; } ;
typedef int part ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct mtd_part*) ;
 long long MTDPART_OFS_APPEND ;
 long long MTDPART_OFS_NXTBLK ;
 long long MTDPART_SIZ_FULL ;
 int PTR_ERR (struct mtd_part*) ;
 int add_mtd_device (int *) ;
 struct mtd_part* allocate_partition (struct mtd_info*,struct mtd_partition*,int,long long) ;
 int free_partition (struct mtd_part*) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int memset (struct mtd_partition*,int ,int) ;
 int mtd_add_partition_attrs (struct mtd_part*) ;
 int mtd_partitions ;
 int mtd_partitions_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mtd_add_partition(struct mtd_info *parent, const char *name,
        long long offset, long long length)
{
 struct mtd_partition part;
 struct mtd_part *new;
 int ret = 0;


 if (offset == MTDPART_OFS_APPEND ||
     offset == MTDPART_OFS_NXTBLK)
  return -EINVAL;

 if (length == MTDPART_SIZ_FULL)
  length = parent->size - offset;

 if (length <= 0)
  return -EINVAL;

 memset(&part, 0, sizeof(part));
 part.name = name;
 part.size = length;
 part.offset = offset;

 new = allocate_partition(parent, &part, -1, offset);
 if (IS_ERR(new))
  return PTR_ERR(new);

 mutex_lock(&mtd_partitions_mutex);
 list_add(&new->list, &mtd_partitions);
 mutex_unlock(&mtd_partitions_mutex);

 ret = add_mtd_device(&new->mtd);
 if (ret)
  goto err_remove_part;

 mtd_add_partition_attrs(new);

 return 0;

err_remove_part:
 mutex_lock(&mtd_partitions_mutex);
 list_del(&new->list);
 mutex_unlock(&mtd_partitions_mutex);

 free_partition(new);

 return ret;
}
