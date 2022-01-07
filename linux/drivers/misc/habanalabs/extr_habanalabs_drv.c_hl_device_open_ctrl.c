
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct hl_fpriv {int is_control; int taskpid; struct file* filp; struct hl_device* hdev; int dev_node; } ;
struct hl_device {int fpriv_list_lock; int fpriv_list; int dev_ctrl; } ;
struct file {struct hl_fpriv* private_data; } ;
struct TYPE_2__ {int pid; } ;


 int ENOMEM ;
 int ENXIO ;
 int EPERM ;
 int GFP_KERNEL ;
 TYPE_1__* current ;
 int dev_err_ratelimited (int ,char*,int ) ;
 int dev_name (int ) ;
 int find_get_pid (int ) ;
 scalar_t__ hl_device_disabled_or_in_reset (struct hl_device*) ;
 int hl_devs_idr ;
 int hl_devs_idr_lock ;
 struct hl_device* idr_find (int *,int ) ;
 int imajor (struct inode*) ;
 int iminor (struct inode*) ;
 int kfree (struct hl_fpriv*) ;
 struct hl_fpriv* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int pr_err (char*,int ,int ) ;

int hl_device_open_ctrl(struct inode *inode, struct file *filp)
{
 struct hl_device *hdev;
 struct hl_fpriv *hpriv;
 int rc;

 mutex_lock(&hl_devs_idr_lock);
 hdev = idr_find(&hl_devs_idr, iminor(inode));
 mutex_unlock(&hl_devs_idr_lock);

 if (!hdev) {
  pr_err("Couldn't find device %d:%d\n",
   imajor(inode), iminor(inode));
  return -ENXIO;
 }

 hpriv = kzalloc(sizeof(*hpriv), GFP_KERNEL);
 if (!hpriv)
  return -ENOMEM;

 mutex_lock(&hdev->fpriv_list_lock);

 if (hl_device_disabled_or_in_reset(hdev)) {
  dev_err_ratelimited(hdev->dev_ctrl,
   "Can't open %s because it is disabled or in reset\n",
   dev_name(hdev->dev_ctrl));
  rc = -EPERM;
  goto out_err;
 }

 list_add(&hpriv->dev_node, &hdev->fpriv_list);
 mutex_unlock(&hdev->fpriv_list_lock);

 hpriv->hdev = hdev;
 filp->private_data = hpriv;
 hpriv->filp = filp;
 hpriv->is_control = 1;
 nonseekable_open(inode, filp);

 hpriv->taskpid = find_get_pid(current->pid);

 return 0;

out_err:
 mutex_unlock(&hdev->fpriv_list_lock);
 kfree(hpriv);
 return rc;
}
