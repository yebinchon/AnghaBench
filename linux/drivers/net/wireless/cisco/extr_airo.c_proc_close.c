
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_data {struct proc_data* wbuffer; struct proc_data* rbuffer; int (* on_close ) (struct inode*,struct file*) ;} ;
struct inode {int dummy; } ;
struct file {struct proc_data* private_data; } ;


 int kfree (struct proc_data*) ;
 int stub1 (struct inode*,struct file*) ;

__attribute__((used)) static int proc_close( struct inode *inode, struct file *file )
{
 struct proc_data *data = file->private_data;

 if (data->on_close != ((void*)0))
  data->on_close(inode, file);
 kfree(data->rbuffer);
 kfree(data->wbuffer);
 kfree(data);
 return 0;
}
