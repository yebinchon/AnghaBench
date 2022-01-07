
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int debugfs_root; } ;


 int BUG_ON (int ) ;
 int IS_ERR_OR_NULL (int ) ;

__attribute__((used)) static void cleanup_debugfs(struct adapter *adapter)
{
 BUG_ON(IS_ERR_OR_NULL(adapter->debugfs_root));
}
