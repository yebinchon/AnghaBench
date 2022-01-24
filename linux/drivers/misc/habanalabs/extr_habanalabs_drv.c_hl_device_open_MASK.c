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
struct inode {int dummy; } ;
struct hl_fpriv {int /*<<< orphan*/  taskpid; int /*<<< orphan*/  restore_phase_mutex; int /*<<< orphan*/  ctx_mgr; struct hl_device* hdev; int /*<<< orphan*/  cb_mgr; int /*<<< orphan*/  dev_node; int /*<<< orphan*/  refcount; struct file* filp; } ;
struct hl_device {int /*<<< orphan*/  fpriv_list_lock; int /*<<< orphan*/  fpriv_list; int /*<<< orphan*/  dev; scalar_t__ compute_ctx; scalar_t__ in_debug; } ;
struct file {struct hl_fpriv* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PLL_HIGH ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hl_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct hl_device*,struct hl_fpriv*) ; 
 int /*<<< orphan*/  FUNC8 (struct hl_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct hl_fpriv*) ; 
 scalar_t__ FUNC11 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct hl_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hl_devs_idr ; 
 int /*<<< orphan*/  hl_devs_idr_lock ; 
 struct hl_device* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct hl_fpriv*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 struct hl_fpriv* FUNC18 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 

int FUNC27(struct inode *inode, struct file *filp)
{
	struct hl_device *hdev;
	struct hl_fpriv *hpriv;
	int rc;

	FUNC22(&hl_devs_idr_lock);
	hdev = FUNC13(&hl_devs_idr, FUNC15(inode));
	FUNC23(&hl_devs_idr_lock);

	if (!hdev) {
		FUNC25("Couldn't find device %d:%d\n",
			FUNC14(inode), FUNC15(inode));
		return -ENXIO;
	}

	hpriv = FUNC18(sizeof(*hpriv), GFP_KERNEL);
	if (!hpriv)
		return -ENOMEM;

	hpriv->hdev = hdev;
	filp->private_data = hpriv;
	hpriv->filp = filp;
	FUNC21(&hpriv->restore_phase_mutex);
	FUNC17(&hpriv->refcount);
	FUNC24(inode, filp);

	FUNC6(&hpriv->cb_mgr);
	FUNC9(&hpriv->ctx_mgr);

	hpriv->taskpid = FUNC4(current->pid);

	FUNC22(&hdev->fpriv_list_lock);

	if (FUNC11(hdev)) {
		FUNC2(hdev->dev,
			"Can't open %s because it is disabled or in reset\n",
			FUNC3(hdev->dev));
		rc = -EPERM;
		goto out_err;
	}

	if (hdev->in_debug) {
		FUNC2(hdev->dev,
			"Can't open %s because it is being debugged by another user\n",
			FUNC3(hdev->dev));
		rc = -EPERM;
		goto out_err;
	}

	if (hdev->compute_ctx) {
		FUNC0(hdev->dev,
			"Can't open %s because another user is working on it\n",
			FUNC3(hdev->dev));
		rc = -EBUSY;
		goto out_err;
	}

	rc = FUNC7(hdev, hpriv);
	if (rc) {
		FUNC1(hdev->dev, "Failed to create context %d\n", rc);
		goto out_err;
	}

	/* Device is IDLE at this point so it is legal to change PLLs.
	 * There is no need to check anything because if the PLL is
	 * already HIGH, the set function will return without doing
	 * anything
	 */
	FUNC12(hdev, PLL_HIGH);

	FUNC19(&hpriv->dev_node, &hdev->fpriv_list);
	FUNC23(&hdev->fpriv_list_lock);

	FUNC10(hpriv);

	return 0;

out_err:
	FUNC23(&hdev->fpriv_list_lock);

	FUNC5(hpriv->hdev, &hpriv->cb_mgr);
	FUNC8(hpriv->hdev, &hpriv->ctx_mgr);
	filp->private_data = NULL;
	FUNC20(&hpriv->restore_phase_mutex);
	FUNC26(hpriv->taskpid);

	FUNC16(hpriv);
	return rc;
}