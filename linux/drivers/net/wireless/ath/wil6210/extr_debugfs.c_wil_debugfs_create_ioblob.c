
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct wil_blob_wrapper {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* debugfs_create_file (char const*,int ,struct dentry*,struct wil_blob_wrapper*,int *) ;
 int fops_ioblob ;

__attribute__((used)) static
struct dentry *wil_debugfs_create_ioblob(const char *name,
      umode_t mode,
      struct dentry *parent,
      struct wil_blob_wrapper *wil_blob)
{
 return debugfs_create_file(name, mode, parent, wil_blob, &fops_ioblob);
}
