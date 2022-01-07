
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dim {int dummy; } ;
struct dentry {int dummy; } ;


 int debugfs_create_file (char*,int,struct dentry*,struct dim*,int *) ;
 int debugfs_dim_fops ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void debugfs_dim_ring_init(struct dim *dim, int ring_idx,
      struct dentry *dd)
{
 static char qname[16];

 snprintf(qname, 10, "%d", ring_idx);
 debugfs_create_file(qname, 0600, dd, dim, &debugfs_dim_fops);
}
