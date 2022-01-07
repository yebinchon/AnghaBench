
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ef4_nic {int mtd_list; TYPE_1__* type; } ;
struct TYPE_4__ {int writesize; int _sync; int _write; int _read; int _erase; int name; struct ef4_nic* priv; int owner; } ;
struct ef4_mtd_partition {int node; TYPE_2__ mtd; int name; } ;
struct TYPE_3__ {int (* mtd_rename ) (struct ef4_mtd_partition*) ;int mtd_write; int mtd_read; } ;


 int ENOMEM ;
 int THIS_MODULE ;
 int ef4_mtd_erase ;
 int ef4_mtd_remove_partition (struct ef4_mtd_partition*) ;
 int ef4_mtd_sync ;
 int list_add_tail (int *,int *) ;
 scalar_t__ mtd_device_register (TYPE_2__*,int *,int ) ;
 int stub1 (struct ef4_mtd_partition*) ;

int ef4_mtd_add(struct ef4_nic *efx, struct ef4_mtd_partition *parts,
  size_t n_parts, size_t sizeof_part)
{
 struct ef4_mtd_partition *part;
 size_t i;

 for (i = 0; i < n_parts; i++) {
  part = (struct ef4_mtd_partition *)((char *)parts +
          i * sizeof_part);

  part->mtd.writesize = 1;

  part->mtd.owner = THIS_MODULE;
  part->mtd.priv = efx;
  part->mtd.name = part->name;
  part->mtd._erase = ef4_mtd_erase;
  part->mtd._read = efx->type->mtd_read;
  part->mtd._write = efx->type->mtd_write;
  part->mtd._sync = ef4_mtd_sync;

  efx->type->mtd_rename(part);

  if (mtd_device_register(&part->mtd, ((void*)0), 0))
   goto fail;


  list_add_tail(&part->node, &efx->mtd_list);
 }

 return 0;

fail:
 while (i--) {
  part = (struct ef4_mtd_partition *)((char *)parts +
          i * sizeof_part);
  ef4_mtd_remove_partition(part);
 }

 return -ENOMEM;
}
