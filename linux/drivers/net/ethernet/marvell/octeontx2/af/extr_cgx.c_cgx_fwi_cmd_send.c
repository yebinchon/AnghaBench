
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct lmac {int cmd_pend; int cmd_lock; int resp; int lmac_id; int wq_cmd_cmplt; struct cgx* cgx; } ;
struct device {int dummy; } ;
struct cgx {int cgx_id; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int CGX_CMD_OWN_FIRMWARE ;
 scalar_t__ CGX_CMD_OWN_NS ;
 int CGX_CMD_TIMEOUT ;
 int CGX_COMMAND_REG ;
 int CMDREG_OWN ;
 int EBUSY ;
 int EIO ;
 scalar_t__ FIELD_GET (int ,int ) ;
 int FIELD_SET (int ,int ,int ) ;
 int cgx_read (struct cgx*,int ,int ) ;
 int cgx_write (struct cgx*,int ,int ,int ) ;
 int dev_err (struct device*,char*,int ,int ) ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int smp_rmb () ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int cgx_fwi_cmd_send(u64 req, u64 *resp, struct lmac *lmac)
{
 struct cgx *cgx = lmac->cgx;
 struct device *dev;
 int err = 0;
 u64 cmd;


 err = mutex_lock_interruptible(&lmac->cmd_lock);
 if (err)
  return err;


 cmd = cgx_read(cgx, lmac->lmac_id, CGX_COMMAND_REG);
 if (FIELD_GET(CMDREG_OWN, cmd) != CGX_CMD_OWN_NS) {
  err = -EBUSY;
  goto unlock;
 }


 req = FIELD_SET(CMDREG_OWN, CGX_CMD_OWN_FIRMWARE, req);


 lmac->cmd_pend = 1;


 cgx_write(cgx, lmac->lmac_id, CGX_COMMAND_REG, req);


 if (!wait_event_timeout(lmac->wq_cmd_cmplt, !lmac->cmd_pend,
    msecs_to_jiffies(CGX_CMD_TIMEOUT))) {
  dev = &cgx->pdev->dev;
  dev_err(dev, "cgx port %d:%d cmd timeout\n",
   cgx->cgx_id, lmac->lmac_id);
  err = -EIO;
  goto unlock;
 }


 smp_rmb();
 *resp = lmac->resp;

unlock:
 mutex_unlock(&lmac->cmd_lock);

 return err;
}
