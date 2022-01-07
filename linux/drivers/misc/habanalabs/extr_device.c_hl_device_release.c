
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct hl_fpriv {int ctx_mgr; int hdev; int cb_mgr; } ;
struct file {struct hl_fpriv* private_data; } ;


 int hl_cb_mgr_fini (int ,int *) ;
 int hl_ctx_mgr_fini (int ,int *) ;
 int hl_hpriv_put (struct hl_fpriv*) ;

__attribute__((used)) static int hl_device_release(struct inode *inode, struct file *filp)
{
 struct hl_fpriv *hpriv = filp->private_data;

 hl_cb_mgr_fini(hpriv->hdev, &hpriv->cb_mgr);
 hl_ctx_mgr_fini(hpriv->hdev, &hpriv->ctx_mgr);

 filp->private_data = ((void*)0);

 hl_hpriv_put(hpriv);

 return 0;
}
