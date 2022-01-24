#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  enable; int /*<<< orphan*/  settime64; int /*<<< orphan*/  gettime64; int /*<<< orphan*/  adjtime; int /*<<< orphan*/  adjfreq; scalar_t__ pps; scalar_t__ n_per_out; scalar_t__ n_ext_ts; scalar_t__ n_alarm; int /*<<< orphan*/  max_adj; int /*<<< orphan*/  name; int /*<<< orphan*/  owner; } ;
struct qede_ptp {int /*<<< orphan*/  clock; TYPE_4__ clock_info; int /*<<< orphan*/  ops; struct qede_dev* edev; } ;
struct qede_dev {struct qede_ptp* ptp; TYPE_3__* pdev; TYPE_2__* ndev; TYPE_1__* ops; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {char* name; } ;
struct TYPE_5__ {int /*<<< orphan*/  ptp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*,char*) ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QED_MAX_PHC_DRIFT_PPB ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC3 (struct qede_ptp*) ; 
 struct qede_ptp* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qede_ptp_adjfreq ; 
 int /*<<< orphan*/  qede_ptp_adjtime ; 
 int /*<<< orphan*/  qede_ptp_ancillary_feature_enable ; 
 int /*<<< orphan*/  FUNC6 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct qede_dev*) ; 
 int /*<<< orphan*/  qede_ptp_gettime ; 
 int FUNC8 (struct qede_dev*,int) ; 
 int /*<<< orphan*/  qede_ptp_settime ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,char*) ; 

int FUNC10(struct qede_dev *edev, bool init_tc)
{
	struct qede_ptp *ptp;
	int rc;

	ptp = FUNC4(sizeof(*ptp), GFP_KERNEL);
	if (!ptp) {
		FUNC1(edev, "Failed to allocate struct for PTP\n");
		return -ENOMEM;
	}

	ptp->edev = edev;
	ptp->ops = edev->ops->ptp;
	if (!ptp->ops) {
		FUNC1(edev, "PTP enable failed\n");
		rc = -EIO;
		goto err1;
	}

	edev->ptp = ptp;

	rc = FUNC8(edev, init_tc);
	if (rc)
		goto err1;

	FUNC6(edev);

	/* Fill the ptp_clock_info struct and register PTP clock */
	ptp->clock_info.owner = THIS_MODULE;
	FUNC9(ptp->clock_info.name, 16, "%s", edev->ndev->name);
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

	ptp->clock = FUNC5(&ptp->clock_info, &edev->pdev->dev);
	if (FUNC2(ptp->clock)) {
		FUNC0(edev, "PTP clock registration failed\n");
		FUNC7(edev);
		rc = -EINVAL;
		goto err2;
	}

	return 0;

err1:
	FUNC3(ptp);
err2:
	edev->ptp = NULL;

	return rc;
}