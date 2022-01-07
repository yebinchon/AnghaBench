
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {struct b43_dfsentry* dfsentry; } ;
struct b43_dfsentry {int * dyn_debug_dentries; } ;


 int __B43_NR_DYNDBG ;
 int debugfs_remove (int ) ;

__attribute__((used)) static void b43_remove_dynamic_debug(struct b43_wldev *dev)
{
 struct b43_dfsentry *e = dev->dfsentry;
 int i;

 for (i = 0; i < __B43_NR_DYNDBG; i++)
  debugfs_remove(e->dyn_debug_dentries[i]);
}
