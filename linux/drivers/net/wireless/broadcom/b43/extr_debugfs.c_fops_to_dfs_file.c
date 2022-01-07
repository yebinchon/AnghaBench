
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {void* dfsentry; } ;
typedef void b43_dfs_file ;
struct b43_debugfs_fops {int file_struct_offset; } ;



__attribute__((used)) static inline
struct b43_dfs_file *fops_to_dfs_file(struct b43_wldev *dev,
          const struct b43_debugfs_fops *dfops)
{
 void *p;

 p = dev->dfsentry;
 p += dfops->file_struct_offset;

 return p;
}
