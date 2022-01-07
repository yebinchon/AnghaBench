
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_host_dev {int lock; int ct_type; } ;
struct inode {int dummy; } ;
struct file {struct vmci_host_dev* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int VMCIOBJ_NOT_SET ;
 struct vmci_host_dev* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int vmci_host_open(struct inode *inode, struct file *filp)
{
 struct vmci_host_dev *vmci_host_dev;

 vmci_host_dev = kzalloc(sizeof(struct vmci_host_dev), GFP_KERNEL);
 if (vmci_host_dev == ((void*)0))
  return -ENOMEM;

 vmci_host_dev->ct_type = VMCIOBJ_NOT_SET;
 mutex_init(&vmci_host_dev->lock);
 filp->private_data = vmci_host_dev;

 return 0;
}
