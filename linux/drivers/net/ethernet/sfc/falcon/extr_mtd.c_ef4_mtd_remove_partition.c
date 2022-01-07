
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_mtd_partition {int node; int mtd; } ;


 int EBUSY ;
 int WARN_ON (int) ;
 int list_del (int *) ;
 int mtd_device_unregister (int *) ;
 int ssleep (int) ;

__attribute__((used)) static void ef4_mtd_remove_partition(struct ef4_mtd_partition *part)
{
 int rc;

 for (;;) {
  rc = mtd_device_unregister(&part->mtd);
  if (rc != -EBUSY)
   break;
  ssleep(1);
 }
 WARN_ON(rc);
 list_del(&part->node);
}
