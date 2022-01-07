
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int ltree_lock; int global_sqnum; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

unsigned long long ubi_next_sqnum(struct ubi_device *ubi)
{
 unsigned long long sqnum;

 spin_lock(&ubi->ltree_lock);
 sqnum = ubi->global_sqnum++;
 spin_unlock(&ubi->ltree_lock);

 return sqnum;
}
