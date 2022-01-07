
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct wil_debugfs_iomem_data {void* offset; struct wil6210_priv* wil; } ;
struct TYPE_2__ {size_t iomem_data_count; struct wil_debugfs_iomem_data* data_arr; } ;
struct wil6210_priv {TYPE_1__ dbg_data; } ;
struct dentry {int dummy; } ;


 int debugfs_create_file_unsafe (char const*,int ,struct dentry*,struct wil_debugfs_iomem_data*,int *) ;
 int fops_iomem_x32 ;

__attribute__((used)) static void wil_debugfs_create_iomem_x32(const char *name, umode_t mode,
      struct dentry *parent, void *value,
      struct wil6210_priv *wil)
{
 struct wil_debugfs_iomem_data *data = &wil->dbg_data.data_arr[
           wil->dbg_data.iomem_data_count];

 data->wil = wil;
 data->offset = value;

 debugfs_create_file_unsafe(name, mode, parent, data, &fops_iomem_x32);
 wil->dbg_data.iomem_data_count++;
}
