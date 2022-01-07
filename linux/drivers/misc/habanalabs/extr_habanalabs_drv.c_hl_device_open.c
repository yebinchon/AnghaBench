
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct hl_fpriv {int taskpid; int restore_phase_mutex; int ctx_mgr; struct hl_device* hdev; int cb_mgr; int dev_node; int refcount; struct file* filp; } ;
struct hl_device {int fpriv_list_lock; int fpriv_list; int dev; scalar_t__ compute_ctx; scalar_t__ in_debug; } ;
struct file {struct hl_fpriv* private_data; } ;
struct TYPE_2__ {int pid; } ;


 int EBUSY ;
 int ENOMEM ;
 int ENXIO ;
 int EPERM ;
 int GFP_KERNEL ;
 int PLL_HIGH ;
 TYPE_1__* current ;
 int dev_dbg_ratelimited (int ,char*,int ) ;
 int dev_err (int ,char*,int) ;
 int dev_err_ratelimited (int ,char*,int ) ;
 int dev_name (int ) ;
 int find_get_pid (int ) ;
 int hl_cb_mgr_fini (struct hl_device*,int *) ;
 int hl_cb_mgr_init (int *) ;
 int hl_ctx_create (struct hl_device*,struct hl_fpriv*) ;
 int hl_ctx_mgr_fini (struct hl_device*,int *) ;
 int hl_ctx_mgr_init (int *) ;
 int hl_debugfs_add_file (struct hl_fpriv*) ;
 scalar_t__ hl_device_disabled_or_in_reset (struct hl_device*) ;
 int hl_device_set_frequency (struct hl_device*,int ) ;
 int hl_devs_idr ;
 int hl_devs_idr_lock ;
 struct hl_device* idr_find (int *,int ) ;
 int imajor (struct inode*) ;
 int iminor (struct inode*) ;
 int kfree (struct hl_fpriv*) ;
 int kref_init (int *) ;
 struct hl_fpriv* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int pr_err (char*,int ,int ) ;
 int put_pid (int ) ;

int hl_device_open(struct inode *inode, struct file *filp)
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

 hpriv->hdev = hdev;
 filp->private_data = hpriv;
 hpriv->filp = filp;
 mutex_init(&hpriv->restore_phase_mutex);
 kref_init(&hpriv->refcount);
 nonseekable_open(inode, filp);

 hl_cb_mgr_init(&hpriv->cb_mgr);
 hl_ctx_mgr_init(&hpriv->ctx_mgr);

 hpriv->taskpid = find_get_pid(current->pid);

 mutex_lock(&hdev->fpriv_list_lock);

 if (hl_device_disabled_or_in_reset(hdev)) {
  dev_err_ratelimited(hdev->dev,
   "Can't open %s because it is disabled or in reset\n",
   dev_name(hdev->dev));
  rc = -EPERM;
  goto out_err;
 }

 if (hdev->in_debug) {
  dev_err_ratelimited(hdev->dev,
   "Can't open %s because it is being debugged by another user\n",
   dev_name(hdev->dev));
  rc = -EPERM;
  goto out_err;
 }

 if (hdev->compute_ctx) {
  dev_dbg_ratelimited(hdev->dev,
   "Can't open %s because another user is working on it\n",
   dev_name(hdev->dev));
  rc = -EBUSY;
  goto out_err;
 }

 rc = hl_ctx_create(hdev, hpriv);
 if (rc) {
  dev_err(hdev->dev, "Failed to create context %d\n", rc);
  goto out_err;
 }






 hl_device_set_frequency(hdev, PLL_HIGH);

 list_add(&hpriv->dev_node, &hdev->fpriv_list);
 mutex_unlock(&hdev->fpriv_list_lock);

 hl_debugfs_add_file(hpriv);

 return 0;

out_err:
 mutex_unlock(&hdev->fpriv_list_lock);

 hl_cb_mgr_fini(hpriv->hdev, &hpriv->cb_mgr);
 hl_ctx_mgr_fini(hpriv->hdev, &hpriv->ctx_mgr);
 filp->private_data = ((void*)0);
 mutex_destroy(&hpriv->restore_phase_mutex);
 put_pid(hpriv->taskpid);

 kfree(hpriv);
 return rc;
}
