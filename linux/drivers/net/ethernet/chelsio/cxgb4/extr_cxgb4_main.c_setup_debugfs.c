
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int debugfs_root; } ;


 scalar_t__ IS_ERR_OR_NULL (int ) ;
 int t4_setup_debugfs (struct adapter*) ;

__attribute__((used)) static int setup_debugfs(struct adapter *adap)
{
 if (IS_ERR_OR_NULL(adap->debugfs_root))
  return -1;




 return 0;
}
