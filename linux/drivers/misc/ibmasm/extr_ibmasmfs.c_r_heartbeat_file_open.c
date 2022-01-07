
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_private; } ;
struct ibmasmfs_heartbeat_data {int heartbeat; scalar_t__ sp; scalar_t__ active; } ;
struct file {struct ibmasmfs_heartbeat_data* private_data; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ibmasm_init_reverse_heartbeat (scalar_t__,int *) ;
 struct ibmasmfs_heartbeat_data* kmalloc (int,int ) ;

__attribute__((used)) static int r_heartbeat_file_open(struct inode *inode, struct file *file)
{
 struct ibmasmfs_heartbeat_data *rhbeat;

 if (!inode->i_private)
  return -ENODEV;

 rhbeat = kmalloc(sizeof(struct ibmasmfs_heartbeat_data), GFP_KERNEL);
 if (!rhbeat)
  return -ENOMEM;

 rhbeat->sp = inode->i_private;
 rhbeat->active = 0;
 ibmasm_init_reverse_heartbeat(rhbeat->sp, &rhbeat->heartbeat);
 file->private_data = rhbeat;
 return 0;
}
