
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct hl_fpriv {int dev_node; struct hl_device* hdev; } ;
struct hl_device {int fpriv_list_lock; } ;
struct file {struct hl_fpriv* private_data; } ;


 int kfree (struct hl_fpriv*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hl_device_release_ctrl(struct inode *inode, struct file *filp)
{
 struct hl_fpriv *hpriv = filp->private_data;
 struct hl_device *hdev;

 filp->private_data = ((void*)0);

 hdev = hpriv->hdev;

 mutex_lock(&hdev->fpriv_list_lock);
 list_del(&hpriv->dev_node);
 mutex_unlock(&hdev->fpriv_list_lock);

 kfree(hpriv);

 return 0;
}
