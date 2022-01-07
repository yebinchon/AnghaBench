
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_wldev {struct b43legacy_dfsentry* dfsentry; } ;
struct b43legacy_dfsentry {int * dyn_debug_dentries; } ;


 int __B43legacy_NR_DYNDBG ;
 int debugfs_remove (int ) ;

__attribute__((used)) static void b43legacy_remove_dynamic_debug(struct b43legacy_wldev *dev)
{
 struct b43legacy_dfsentry *e = dev->dfsentry;
 int i;

 for (i = 0; i < __B43legacy_NR_DYNDBG; i++)
  debugfs_remove(e->dyn_debug_dentries[i]);
}
