
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_host_dev {scalar_t__ ct_type; int * context; } ;
struct inode {int dummy; } ;
struct file {struct vmci_host_dev* private_data; } ;


 scalar_t__ VMCIOBJ_CONTEXT ;
 scalar_t__ VMCIOBJ_NOT_SET ;
 int atomic_dec (int *) ;
 int kfree (struct vmci_host_dev*) ;
 int vmci_ctx_destroy (int *) ;
 int vmci_host_active_users ;

__attribute__((used)) static int vmci_host_close(struct inode *inode, struct file *filp)
{
 struct vmci_host_dev *vmci_host_dev = filp->private_data;

 if (vmci_host_dev->ct_type == VMCIOBJ_CONTEXT) {
  vmci_ctx_destroy(vmci_host_dev->context);
  vmci_host_dev->context = ((void*)0);







  atomic_dec(&vmci_host_active_users);
 }
 vmci_host_dev->ct_type = VMCIOBJ_NOT_SET;

 kfree(vmci_host_dev);
 filp->private_data = ((void*)0);
 return 0;
}
