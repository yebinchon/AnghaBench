
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_private; } ;
struct ibmasmfs_command_data {scalar_t__ sp; int * command; } ;
struct file {struct ibmasmfs_command_data* private_data; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct ibmasmfs_command_data* kmalloc (int,int ) ;

__attribute__((used)) static int command_file_open(struct inode *inode, struct file *file)
{
 struct ibmasmfs_command_data *command_data;

 if (!inode->i_private)
  return -ENODEV;

 command_data = kmalloc(sizeof(struct ibmasmfs_command_data), GFP_KERNEL);
 if (!command_data)
  return -ENOMEM;

 command_data->command = ((void*)0);
 command_data->sp = inode->i_private;
 file->private_data = command_data;
 return 0;
}
