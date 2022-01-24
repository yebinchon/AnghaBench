#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct devlink {int dummy; } ;
struct bnxt_dl {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  port_id; } ;
struct bnxt {int hwrm_spec_code; int /*<<< orphan*/  dl_port; int /*<<< orphan*/  dev; TYPE_1__ pf; int /*<<< orphan*/  switch_id; TYPE_2__* pdev; int /*<<< orphan*/  eswitch_mode; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEVLINK_ESWITCH_MODE_LEGACY ; 
 int /*<<< orphan*/  DEVLINK_PORT_FLAVOUR_PHYSICAL ; 
 int ENOMEM ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_SRIOV ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*) ; 
 int /*<<< orphan*/  bnxt_dl_ops ; 
 int /*<<< orphan*/  bnxt_dl_params ; 
 int /*<<< orphan*/  bnxt_dl_port_params ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*,struct devlink*) ; 
 struct devlink* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC5 (struct devlink*) ; 
 int FUNC6 (struct devlink*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct devlink*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct devlink*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct devlink*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC17 (TYPE_2__*,int /*<<< orphan*/ ) ; 

int FUNC18(struct bnxt *bp)
{
	struct devlink *dl;
	int rc;

	if (bp->hwrm_spec_code < 0x10600) {
		FUNC16(bp->dev, "Firmware does not support NVM params");
		return -ENOTSUPP;
	}

	dl = FUNC3(&bnxt_dl_ops, sizeof(struct bnxt_dl));
	if (!dl) {
		FUNC16(bp->dev, "devlink_alloc failed");
		return -ENOMEM;
	}

	FUNC2(bp, dl);

	/* Add switchdev eswitch mode setting, if SRIOV supported */
	if (FUNC17(bp->pdev, PCI_EXT_CAP_ID_SRIOV) &&
	    bp->hwrm_spec_code > 0x10803)
		bp->eswitch_mode = DEVLINK_ESWITCH_MODE_LEGACY;

	rc = FUNC13(dl, &bp->pdev->dev);
	if (rc) {
		FUNC16(bp->dev, "devlink_register failed. rc=%d", rc);
		goto err_dl_free;
	}

	rc = FUNC6(dl, bnxt_dl_params,
				     FUNC0(bnxt_dl_params));
	if (rc) {
		FUNC16(bp->dev, "devlink_params_register failed. rc=%d",
			    rc);
		goto err_dl_unreg;
	}

	FUNC8(&bp->dl_port, DEVLINK_PORT_FLAVOUR_PHYSICAL,
			       bp->pf.port_id, false, 0,
			       bp->switch_id, sizeof(bp->switch_id));
	rc = FUNC10(dl, &bp->dl_port, bp->pf.port_id);
	if (rc) {
		FUNC15(bp->dev, "devlink_port_register failed");
		goto err_dl_param_unreg;
	}
	FUNC11(&bp->dl_port, bp->dev);

	rc = FUNC9(&bp->dl_port, bnxt_dl_port_params,
					  FUNC0(bnxt_dl_port_params));
	if (rc) {
		FUNC15(bp->dev, "devlink_port_params_register failed");
		goto err_dl_port_unreg;
	}

	FUNC5(dl);

	FUNC1(bp);

	return 0;

err_dl_port_unreg:
	FUNC12(&bp->dl_port);
err_dl_param_unreg:
	FUNC7(dl, bnxt_dl_params,
				  FUNC0(bnxt_dl_params));
err_dl_unreg:
	FUNC14(dl);
err_dl_free:
	FUNC2(bp, NULL);
	FUNC4(dl);
	return rc;
}