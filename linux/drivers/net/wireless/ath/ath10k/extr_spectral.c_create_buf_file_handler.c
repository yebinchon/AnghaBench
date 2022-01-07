
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct rchan_buf {int dummy; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 struct dentry* debugfs_create_file (char const*,int ,struct dentry*,struct rchan_buf*,int *) ;
 int relay_file_operations ;

__attribute__((used)) static struct dentry *create_buf_file_handler(const char *filename,
           struct dentry *parent,
           umode_t mode,
           struct rchan_buf *buf,
           int *is_global)
{
 struct dentry *buf_file;

 buf_file = debugfs_create_file(filename, mode, parent, buf,
           &relay_file_operations);
 if (IS_ERR(buf_file))
  return ((void*)0);

 *is_global = 1;
 return buf_file;
}
