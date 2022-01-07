
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_handle {int * hnae3_dbgfs; } ;


 int debugfs_remove_recursive (int *) ;

void hns3_dbg_uninit(struct hnae3_handle *handle)
{
 debugfs_remove_recursive(handle->hnae3_dbgfs);
 handle->hnae3_dbgfs = ((void*)0);
}
