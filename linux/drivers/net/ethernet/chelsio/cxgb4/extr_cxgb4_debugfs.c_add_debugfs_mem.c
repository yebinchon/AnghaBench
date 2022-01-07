
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int debugfs_root; } ;


 int debugfs_create_file_size (char const*,int,int ,void*,int *,unsigned int) ;
 int mem_debugfs_fops ;

__attribute__((used)) static void add_debugfs_mem(struct adapter *adap, const char *name,
       unsigned int idx, unsigned int size_mb)
{
 debugfs_create_file_size(name, 0400, adap->debugfs_root,
     (void *)adap + idx, &mem_debugfs_fops,
     size_mb << 20);
}
