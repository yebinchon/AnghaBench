
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int op; int cb_handle; int cb_size; } ;
struct TYPE_5__ {int cb_handle; } ;
union hl_cb_args {TYPE_3__ in; TYPE_2__ out; } ;
typedef int u64 ;
struct hl_fpriv {int cb_mgr; TYPE_1__* ctx; struct hl_device* hdev; } ;
struct hl_device {int in_reset; int dev; } ;
struct TYPE_4__ {int asid; } ;


 int EBUSY ;
 int ENOTTY ;


 scalar_t__ atomic_read (int *) ;
 int dev_warn_ratelimited (int ,char*,char*) ;
 int hl_cb_create (struct hl_device*,int *,int ,int *,int ) ;
 int hl_cb_destroy (struct hl_device*,int *,int ) ;
 scalar_t__ hl_device_disabled_or_in_reset (struct hl_device*) ;
 int memset (union hl_cb_args*,int ,int) ;

int hl_cb_ioctl(struct hl_fpriv *hpriv, void *data)
{
 union hl_cb_args *args = data;
 struct hl_device *hdev = hpriv->hdev;
 u64 handle;
 int rc;

 if (hl_device_disabled_or_in_reset(hdev)) {
  dev_warn_ratelimited(hdev->dev,
   "Device is %s. Can't execute CB IOCTL\n",
   atomic_read(&hdev->in_reset) ? "in_reset" : "disabled");
  return -EBUSY;
 }

 switch (args->in.op) {
 case 129:
  rc = hl_cb_create(hdev, &hpriv->cb_mgr, args->in.cb_size,
     &handle, hpriv->ctx->asid);
  memset(args, 0, sizeof(*args));
  args->out.cb_handle = handle;
  break;
 case 128:
  rc = hl_cb_destroy(hdev, &hpriv->cb_mgr,
     args->in.cb_handle);
  break;
 default:
  rc = -ENOTTY;
  break;
 }

 return rc;
}
