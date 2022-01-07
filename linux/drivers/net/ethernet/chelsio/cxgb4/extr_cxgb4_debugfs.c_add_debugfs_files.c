
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_debugfs_entry {int data; int ops; int mode; int name; } ;
struct adapter {int debugfs_root; } ;


 int debugfs_create_file (int ,int ,int ,void*,int ) ;

void add_debugfs_files(struct adapter *adap,
         struct t4_debugfs_entry *files,
         unsigned int nfiles)
{
 int i;


 for (i = 0; i < nfiles; i++)
  debugfs_create_file(files[i].name, files[i].mode,
        adap->debugfs_root,
        (void *)adap + files[i].data,
        files[i].ops);
}
