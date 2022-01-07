
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int * xgbe_debugfs; } ;


 int debugfs_remove_recursive (int *) ;

void xgbe_debugfs_exit(struct xgbe_prv_data *pdata)
{
 debugfs_remove_recursive(pdata->xgbe_debugfs);
 pdata->xgbe_debugfs = ((void*)0);
}
