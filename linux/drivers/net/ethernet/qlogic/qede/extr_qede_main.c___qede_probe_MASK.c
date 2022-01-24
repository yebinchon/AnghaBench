#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct qed_slowpath_params {int dp_level; int is_vf; int recov_in_prog; int /*<<< orphan*/  name; int /*<<< orphan*/  drv_eng; int /*<<< orphan*/  drv_rev; int /*<<< orphan*/  drv_minor; int /*<<< orphan*/  drv_major; int /*<<< orphan*/  int_mode; int /*<<< orphan*/  dp_module; int /*<<< orphan*/  protocol; } ;
struct qede_dev {TYPE_4__* ndev; int /*<<< orphan*/  rx_copybreak; TYPE_2__* ops; int /*<<< orphan*/  qede_lock; int /*<<< orphan*/  sp_task; int /*<<< orphan*/  flags; int /*<<< orphan*/  dev_info; struct qed_slowpath_params stats; struct qed_dev* cdev; } ;
struct qed_probe_params {int dp_level; int is_vf; int recov_in_prog; int /*<<< orphan*/  name; int /*<<< orphan*/  drv_eng; int /*<<< orphan*/  drv_rev; int /*<<< orphan*/  drv_minor; int /*<<< orphan*/  drv_major; int /*<<< orphan*/  int_mode; int /*<<< orphan*/  dp_module; int /*<<< orphan*/  protocol; } ;
struct qed_dev_eth_info {int dummy; } ;
struct qed_dev {int dummy; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  sp_params ;
typedef  int /*<<< orphan*/  probe_params ;
typedef  enum qede_probe_mode { ____Placeholder_qede_probe_mode } qede_probe_mode ;
typedef  int /*<<< orphan*/  dev_info ;
struct TYPE_12__ {int (* fill_dev_info ) (struct qed_dev*,struct qed_dev_eth_info*) ;TYPE_3__* common; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;
struct TYPE_10__ {int (* slowpath_start ) (struct qed_dev*,struct qed_slowpath_params*) ;int /*<<< orphan*/  (* remove ) (struct qed_dev*) ;int /*<<< orphan*/  (* slowpath_stop ) (struct qed_dev*) ;struct qed_dev* (* probe ) (struct pci_dev*,struct qed_slowpath_params*) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  (* register_ops ) (struct qed_dev*,int /*<<< orphan*/ *,struct qede_dev*) ;TYPE_1__* common; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* set_name ) (struct qed_dev*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qede_dev*) ; 
 int /*<<< orphan*/  QEDE_ENGINEERING_VERSION ; 
 int /*<<< orphan*/  QEDE_FLAGS_IS_VF ; 
 int /*<<< orphan*/  QEDE_MAJOR_VERSION ; 
 int /*<<< orphan*/  QEDE_MINOR_VERSION ; 
 int QEDE_PROBE_NORMAL ; 
 int QEDE_PROBE_RECOVERY ; 
 int /*<<< orphan*/  QEDE_REVISION_VERSION ; 
 int /*<<< orphan*/  QEDE_RX_HDR_SIZE ; 
 int /*<<< orphan*/  QED_DRV_VER_STR_SIZE ; 
 int /*<<< orphan*/  QED_INT_MODE_MSIX ; 
 int QED_LEVEL_INFO ; 
 int /*<<< orphan*/  QED_PROTOCOL_ETH ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct qed_dev_eth_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct qed_slowpath_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct qede_dev* FUNC7 (struct net_device*) ; 
 struct net_device* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 TYPE_6__* qed_ops ; 
 struct qede_dev* FUNC10 (struct qed_dev*,struct pci_dev*,struct qed_dev_eth_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct qede_dev*) ; 
 int /*<<< orphan*/  qede_ll_ops ; 
 int /*<<< orphan*/  FUNC12 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct qede_dev*,int) ; 
 int FUNC14 (struct qede_dev*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct qede_dev*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 
 int /*<<< orphan*/  qede_sp_task ; 
 int /*<<< orphan*/  FUNC17 (struct qed_dev*) ; 
 int FUNC18 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct qed_dev* FUNC21 (struct pci_dev*,struct qed_slowpath_params*) ; 
 int FUNC22 (struct qed_dev*,struct qed_slowpath_params*) ; 
 int FUNC23 (struct qed_dev*,struct qed_dev_eth_info*) ; 
 int /*<<< orphan*/  FUNC24 (struct qed_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct qed_dev*,int /*<<< orphan*/ *,struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC26 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC27 (struct qed_dev*) ; 
 scalar_t__ FUNC28 (int) ; 

__attribute__((used)) static int FUNC29(struct pci_dev *pdev, u32 dp_module, u8 dp_level,
			bool is_vf, enum qede_probe_mode mode)
{
	struct qed_probe_params probe_params;
	struct qed_slowpath_params sp_params;
	struct qed_dev_eth_info dev_info;
	struct qede_dev *edev;
	struct qed_dev *cdev;
	int rc;

	if (FUNC28(dp_level & QED_LEVEL_INFO))
		FUNC9("Starting qede probe\n");

	FUNC5(&probe_params, 0, sizeof(probe_params));
	probe_params.protocol = QED_PROTOCOL_ETH;
	probe_params.dp_module = dp_module;
	probe_params.dp_level = dp_level;
	probe_params.is_vf = is_vf;
	probe_params.recov_in_prog = (mode == QEDE_PROBE_RECOVERY);
	cdev = qed_ops->common->probe(pdev, &probe_params);
	if (!cdev) {
		rc = -ENODEV;
		goto err0;
	}

	FUNC17(cdev);

	/* Start the Slowpath-process */
	FUNC5(&sp_params, 0, sizeof(sp_params));
	sp_params.int_mode = QED_INT_MODE_MSIX;
	sp_params.drv_major = QEDE_MAJOR_VERSION;
	sp_params.drv_minor = QEDE_MINOR_VERSION;
	sp_params.drv_rev = QEDE_REVISION_VERSION;
	sp_params.drv_eng = QEDE_ENGINEERING_VERSION;
	FUNC20(sp_params.name, "qede LAN", QED_DRV_VER_STR_SIZE);
	rc = qed_ops->common->slowpath_start(cdev, &sp_params);
	if (rc) {
		FUNC9("Cannot start slowpath\n");
		goto err1;
	}

	/* Learn information crucial for qede to progress */
	rc = qed_ops->fill_dev_info(cdev, &dev_info);
	if (rc)
		goto err2;

	if (mode != QEDE_PROBE_RECOVERY) {
		edev = FUNC10(cdev, pdev, &dev_info, dp_module,
					   dp_level);
		if (!edev) {
			rc = -ENOMEM;
			goto err2;
		}
	} else {
		struct net_device *ndev = FUNC8(pdev);

		edev = FUNC7(ndev);
		edev->cdev = cdev;
		FUNC5(&edev->stats, 0, sizeof(edev->stats));
		FUNC4(&edev->dev_info, &dev_info, sizeof(dev_info));
	}

	if (is_vf)
		FUNC19(QEDE_FLAGS_IS_VF, &edev->flags);

	FUNC11(edev);

	rc = FUNC14(edev, (mode == QEDE_PROBE_RECOVERY));
	if (rc)
		goto err3;

	if (mode != QEDE_PROBE_RECOVERY) {
		/* Prepare the lock prior to the registration of the netdev,
		 * as once it's registered we might reach flows requiring it
		 * [it's even possible to reach a flow needing it directly
		 * from there, although it's unlikely].
		 */
		FUNC1(&edev->sp_task, qede_sp_task);
		FUNC6(&edev->qede_lock);

		rc = FUNC18(edev->ndev);
		if (rc) {
			FUNC0(edev, "Cannot register net-device\n");
			goto err4;
		}
	}

	edev->ops->common->set_name(cdev, edev->ndev->name);

	/* PTP not supported on VFs */
	if (!is_vf)
		FUNC13(edev, (mode == QEDE_PROBE_NORMAL));

	edev->ops->register_ops(cdev, &qede_ll_ops, edev);

#ifdef CONFIG_DCB
	if (!IS_VF(edev))
		qede_set_dcbnl_ops(edev->ndev);
#endif

	edev->rx_copybreak = QEDE_RX_HDR_SIZE;

	FUNC12(edev);
	return 0;

err4:
	FUNC15(edev, (mode == QEDE_PROBE_RECOVERY));
err3:
	FUNC3(edev->ndev);
err2:
	qed_ops->common->slowpath_stop(cdev);
err1:
	qed_ops->common->remove(cdev);
err0:
	return rc;
}