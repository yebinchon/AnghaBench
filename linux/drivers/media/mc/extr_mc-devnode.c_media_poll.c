
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct poll_table_struct {int dummy; } ;
struct media_devnode {TYPE_1__* fops; } ;
struct file {int dummy; } ;
typedef int __poll_t ;
struct TYPE_2__ {int (* poll ) (struct file*,struct poll_table_struct*) ;} ;


 int DEFAULT_POLLMASK ;
 int EPOLLERR ;
 int EPOLLHUP ;
 struct media_devnode* media_devnode_data (struct file*) ;
 int media_devnode_is_registered (struct media_devnode*) ;
 int stub1 (struct file*,struct poll_table_struct*) ;

__attribute__((used)) static __poll_t media_poll(struct file *filp,
          struct poll_table_struct *poll)
{
 struct media_devnode *devnode = media_devnode_data(filp);

 if (!media_devnode_is_registered(devnode))
  return EPOLLERR | EPOLLHUP;
 if (!devnode->fops->poll)
  return DEFAULT_POLLMASK;
 return devnode->fops->poll(filp, poll);
}
