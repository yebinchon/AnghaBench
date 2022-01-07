
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int enable; int settime64; int gettime64; int adjtime; int adjfreq; scalar_t__ pps; scalar_t__ n_per_out; scalar_t__ n_ext_ts; scalar_t__ n_alarm; int max_adj; int name; int owner; } ;
struct qede_ptp {int clock; TYPE_4__ clock_info; int ops; struct qede_dev* edev; } ;
struct qede_dev {struct qede_ptp* ptp; TYPE_3__* pdev; TYPE_2__* ndev; TYPE_1__* ops; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {char* name; } ;
struct TYPE_5__ {int ptp; } ;


 int DP_ERR (struct qede_dev*,char*) ;
 int DP_INFO (struct qede_dev*,char*) ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int QED_MAX_PHC_DRIFT_PPB ;
 int THIS_MODULE ;
 int kfree (struct qede_ptp*) ;
 struct qede_ptp* kzalloc (int,int ) ;
 int ptp_clock_register (TYPE_4__*,int *) ;
 int qede_ptp_adjfreq ;
 int qede_ptp_adjtime ;
 int qede_ptp_ancillary_feature_enable ;
 int qede_ptp_cfg_filters (struct qede_dev*) ;
 int qede_ptp_disable (struct qede_dev*) ;
 int qede_ptp_gettime ;
 int qede_ptp_init (struct qede_dev*,int) ;
 int qede_ptp_settime ;
 int snprintf (int ,int,char*,char*) ;

int qede_ptp_enable(struct qede_dev *edev, bool init_tc)
{
 struct qede_ptp *ptp;
 int rc;

 ptp = kzalloc(sizeof(*ptp), GFP_KERNEL);
 if (!ptp) {
  DP_INFO(edev, "Failed to allocate struct for PTP\n");
  return -ENOMEM;
 }

 ptp->edev = edev;
 ptp->ops = edev->ops->ptp;
 if (!ptp->ops) {
  DP_INFO(edev, "PTP enable failed\n");
  rc = -EIO;
  goto err1;
 }

 edev->ptp = ptp;

 rc = qede_ptp_init(edev, init_tc);
 if (rc)
  goto err1;

 qede_ptp_cfg_filters(edev);


 ptp->clock_info.owner = THIS_MODULE;
 snprintf(ptp->clock_info.name, 16, "%s", edev->ndev->name);
 ptp->clock_info.max_adj = QED_MAX_PHC_DRIFT_PPB;
 ptp->clock_info.n_alarm = 0;
 ptp->clock_info.n_ext_ts = 0;
 ptp->clock_info.n_per_out = 0;
 ptp->clock_info.pps = 0;
 ptp->clock_info.adjfreq = qede_ptp_adjfreq;
 ptp->clock_info.adjtime = qede_ptp_adjtime;
 ptp->clock_info.gettime64 = qede_ptp_gettime;
 ptp->clock_info.settime64 = qede_ptp_settime;
 ptp->clock_info.enable = qede_ptp_ancillary_feature_enable;

 ptp->clock = ptp_clock_register(&ptp->clock_info, &edev->pdev->dev);
 if (IS_ERR(ptp->clock)) {
  DP_ERR(edev, "PTP clock registration failed\n");
  qede_ptp_disable(edev);
  rc = -EINVAL;
  goto err2;
 }

 return 0;

err1:
 kfree(ptp);
err2:
 edev->ptp = ((void*)0);

 return rc;
}
