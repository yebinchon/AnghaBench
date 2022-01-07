
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct b43_wldev {struct b43_dfsentry* dfsentry; } ;
struct TYPE_15__ {struct b43_dfsentry* log; } ;
struct TYPE_14__ {int dentry; } ;
struct TYPE_13__ {int dentry; } ;
struct TYPE_24__ {int dentry; } ;
struct TYPE_23__ {int dentry; } ;
struct TYPE_22__ {int dentry; } ;
struct TYPE_21__ {int dentry; } ;
struct TYPE_20__ {int dentry; } ;
struct TYPE_19__ {int dentry; } ;
struct TYPE_18__ {int dentry; } ;
struct TYPE_17__ {int dentry; } ;
struct TYPE_16__ {int dentry; } ;
struct b43_dfsentry {TYPE_12__ txstatlog; int subdir; TYPE_11__ file_loctls; TYPE_10__ file_restart; TYPE_9__ file_txstat; TYPE_8__ file_mmio32write; TYPE_7__ file_mmio32read; TYPE_6__ file_mmio16write; TYPE_5__ file_mmio16read; TYPE_4__ file_shm32write; TYPE_3__ file_shm32read; TYPE_2__ file_shm16write; TYPE_1__ file_shm16read; } ;


 int b43_remove_dynamic_debug (struct b43_wldev*) ;
 int debugfs_remove (int ) ;
 int kfree (struct b43_dfsentry*) ;

void b43_debugfs_remove_device(struct b43_wldev *dev)
{
 struct b43_dfsentry *e;

 if (!dev)
  return;
 e = dev->dfsentry;
 if (!e)
  return;
 b43_remove_dynamic_debug(dev);

 debugfs_remove(e->file_shm16read.dentry);
 debugfs_remove(e->file_shm16write.dentry);
 debugfs_remove(e->file_shm32read.dentry);
 debugfs_remove(e->file_shm32write.dentry);
 debugfs_remove(e->file_mmio16read.dentry);
 debugfs_remove(e->file_mmio16write.dentry);
 debugfs_remove(e->file_mmio32read.dentry);
 debugfs_remove(e->file_mmio32write.dentry);
 debugfs_remove(e->file_txstat.dentry);
 debugfs_remove(e->file_restart.dentry);
 debugfs_remove(e->file_loctls.dentry);

 debugfs_remove(e->subdir);
 kfree(e->txstatlog.log);
 kfree(e);
}
