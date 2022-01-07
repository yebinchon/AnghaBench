
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ibmasmfs_event_data {int reader; int sp; } ;
struct file {struct ibmasmfs_event_data* private_data; } ;


 int ibmasm_event_reader_unregister (int ,int *) ;
 int kfree (struct ibmasmfs_event_data*) ;

__attribute__((used)) static int event_file_close(struct inode *inode, struct file *file)
{
 struct ibmasmfs_event_data *event_data = file->private_data;

 ibmasm_event_reader_unregister(event_data->sp, &event_data->reader);
 kfree(event_data);
 return 0;
}
