
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int status; } ;
struct TYPE_3__ {int timeout_us; int seq; } ;
union hl_wait_cs_args {TYPE_2__ out; TYPE_1__ in; } ;
typedef int u64 ;
struct hl_fpriv {int ctx; struct hl_device* hdev; } ;
struct hl_device {int dev; } ;


 long EINTR ;
 long EIO ;
 long ERESTARTSYS ;
 long ETIMEDOUT ;
 int HL_WAIT_CS_STATUS_ABORTED ;
 int HL_WAIT_CS_STATUS_BUSY ;
 int HL_WAIT_CS_STATUS_COMPLETED ;
 int HL_WAIT_CS_STATUS_INTERRUPTED ;
 int HL_WAIT_CS_STATUS_TIMEDOUT ;
 long _hl_cs_wait_ioctl (struct hl_device*,int ,int ,int ) ;
 int dev_err (int ,char*,long,int ) ;
 int memset (union hl_wait_cs_args*,int ,int) ;

int hl_cs_wait_ioctl(struct hl_fpriv *hpriv, void *data)
{
 struct hl_device *hdev = hpriv->hdev;
 union hl_wait_cs_args *args = data;
 u64 seq = args->in.seq;
 long rc;

 rc = _hl_cs_wait_ioctl(hdev, hpriv->ctx, args->in.timeout_us, seq);

 memset(args, 0, sizeof(*args));

 if (rc < 0) {
  dev_err(hdev->dev, "Error %ld on waiting for CS handle %llu\n",
   rc, seq);
  if (rc == -ERESTARTSYS) {
   args->out.status = HL_WAIT_CS_STATUS_INTERRUPTED;
   rc = -EINTR;
  } else if (rc == -ETIMEDOUT) {
   args->out.status = HL_WAIT_CS_STATUS_TIMEDOUT;
  } else if (rc == -EIO) {
   args->out.status = HL_WAIT_CS_STATUS_ABORTED;
  }
  return rc;
 }

 if (rc == 0)
  args->out.status = HL_WAIT_CS_STATUS_BUSY;
 else
  args->out.status = HL_WAIT_CS_STATUS_COMPLETED;

 return 0;
}
