
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct adapter {int debugfs_root; } ;
struct TYPE_3__ {int fops; int mode; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int BUG_ON (int ) ;
 int IS_ERR_OR_NULL (int ) ;
 int debugfs_create_file (int ,int ,int ,void*,int ) ;
 TYPE_1__* debugfs_files ;

__attribute__((used)) static int setup_debugfs(struct adapter *adapter)
{
 int i;

 BUG_ON(IS_ERR_OR_NULL(adapter->debugfs_root));




 for (i = 0; i < ARRAY_SIZE(debugfs_files); i++)
  debugfs_create_file(debugfs_files[i].name,
        debugfs_files[i].mode,
        adapter->debugfs_root, (void *)adapter,
        debugfs_files[i].fops);

 return 0;
}
