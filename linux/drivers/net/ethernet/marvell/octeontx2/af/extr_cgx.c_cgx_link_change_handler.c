
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int data; scalar_t__ (* notify_link_chg ) (struct cgx_link_event*,int ) ;} ;
struct cgx_link_user_info {int speed; scalar_t__ link_up; } ;
struct lmac {int event_cb_lock; TYPE_2__ event_cb; int lmac_id; struct cgx_link_user_info link_info; struct cgx* cgx; } ;
struct device {int dummy; } ;
struct cgx_link_event {struct cgx_link_user_info link_uinfo; int lmac_id; int cgx_id; } ;
struct cgx {int cgx_id; TYPE_1__* pdev; } ;
struct TYPE_3__ {struct device dev; } ;


 int CGX_ERR_NONE ;
 int FIELD_GET (int ,int ) ;
 int RESP_LINKSTAT_ERRTYPE ;
 int dev_dbg (struct device*,char*,int ,int ) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int ,int ,char*,int ) ;
 int link_status_user_format (int ,struct cgx_link_user_info*,struct cgx*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ stub1 (struct cgx_link_event*,int ) ;

__attribute__((used)) static inline void cgx_link_change_handler(u64 lstat,
        struct lmac *lmac)
{
 struct cgx_link_user_info *linfo;
 struct cgx *cgx = lmac->cgx;
 struct cgx_link_event event;
 struct device *dev;
 int err_type;

 dev = &cgx->pdev->dev;

 link_status_user_format(lstat, &event.link_uinfo, cgx, lmac->lmac_id);
 err_type = FIELD_GET(RESP_LINKSTAT_ERRTYPE, lstat);

 event.cgx_id = cgx->cgx_id;
 event.lmac_id = lmac->lmac_id;


 lmac->link_info = event.link_uinfo;
 linfo = &lmac->link_info;


 spin_lock(&lmac->event_cb_lock);

 if (!lmac->event_cb.notify_link_chg) {
  dev_dbg(dev, "cgx port %d:%d Link change handler null",
   cgx->cgx_id, lmac->lmac_id);
  if (err_type != CGX_ERR_NONE) {
   dev_err(dev, "cgx port %d:%d Link error %d\n",
    cgx->cgx_id, lmac->lmac_id, err_type);
  }
  dev_info(dev, "cgx port %d:%d Link is %s %d Mbps\n",
    cgx->cgx_id, lmac->lmac_id,
    linfo->link_up ? "UP" : "DOWN", linfo->speed);
  goto err;
 }

 if (lmac->event_cb.notify_link_chg(&event, lmac->event_cb.data))
  dev_err(dev, "event notification failure\n");
err:
 spin_unlock(&lmac->event_cb_lock);
}
