#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
union devlink_param_value {int vbool; } ;
struct qed_devlink {struct qed_dev* cdev; } ;
struct qed_dev {int iwarp_cmt; struct devlink* dl; TYPE_1__* pdev; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  QED_DEVLINK_PARAM_ID_IWARP_CMT ; 
 struct devlink* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC3 (struct devlink*,int /*<<< orphan*/ ,union devlink_param_value) ; 
 int /*<<< orphan*/  FUNC4 (struct devlink*) ; 
 int FUNC5 (struct devlink*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qed_devlink* FUNC6 (struct devlink*) ; 
 int FUNC7 (struct devlink*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct devlink*) ; 
 int /*<<< orphan*/  qed_devlink_params ; 
 int /*<<< orphan*/  qed_dl_ops ; 

__attribute__((used)) static int FUNC9(struct qed_dev *cdev)
{
	union devlink_param_value value;
	struct qed_devlink *qed_dl;
	struct devlink *dl;
	int rc;

	dl = FUNC1(&qed_dl_ops, sizeof(*qed_dl));
	if (!dl)
		return -ENOMEM;

	qed_dl = FUNC6(dl);

	cdev->dl = dl;
	qed_dl->cdev = cdev;

	rc = FUNC7(dl, &cdev->pdev->dev);
	if (rc)
		goto err_free;

	rc = FUNC5(dl, qed_devlink_params,
				     FUNC0(qed_devlink_params));
	if (rc)
		goto err_unregister;

	value.vbool = false;
	FUNC3(dl,
					   QED_DEVLINK_PARAM_ID_IWARP_CMT,
					   value);

	FUNC4(dl);
	cdev->iwarp_cmt = false;

	return 0;

err_unregister:
	FUNC8(dl);

err_free:
	cdev->dl = NULL;
	FUNC2(dl);

	return rc;
}