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
struct hl_fpriv {int is_control; int /*<<< orphan*/  taskpid; struct file* filp; struct hl_device* hdev; int /*<<< orphan*/  dev_node; } ;
struct hl_device {int /*<<< orphan*/  fpriv_list_lock; int /*<<< orphan*/  fpriv_list; int /*<<< orphan*/  dev_ctrl; } ;
struct file {struct hl_fpriv* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct hl_device*) ; 
 int /*<<< orphan*/  hl_devs_idr ; 
 int /*<<< orphan*/  hl_devs_idr_lock ; 
 struct hl_device* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct hl_fpriv*) ; 
 struct hl_fpriv* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC14(struct inode *inode, struct file *filp)
{
	struct hl_device *hdev;
	struct hl_fpriv *hpriv;
	int rc;

	FUNC10(&hl_devs_idr_lock);
	hdev = FUNC4(&hl_devs_idr, FUNC6(inode));
	FUNC11(&hl_devs_idr_lock);

	if (!hdev) {
		FUNC13("Couldn't find device %d:%d\n",
			FUNC5(inode), FUNC6(inode));
		return -ENXIO;
	}

	hpriv = FUNC8(sizeof(*hpriv), GFP_KERNEL);
	if (!hpriv)
		return -ENOMEM;

	FUNC10(&hdev->fpriv_list_lock);

	if (FUNC3(hdev)) {
		FUNC0(hdev->dev_ctrl,
			"Can't open %s because it is disabled or in reset\n",
			FUNC1(hdev->dev_ctrl));
		rc = -EPERM;
		goto out_err;
	}

	FUNC9(&hpriv->dev_node, &hdev->fpriv_list);
	FUNC11(&hdev->fpriv_list_lock);

	hpriv->hdev = hdev;
	filp->private_data = hpriv;
	hpriv->filp = filp;
	hpriv->is_control = true;
	FUNC12(inode, filp);

	hpriv->taskpid = FUNC2(current->pid);

	return 0;

out_err:
	FUNC11(&hdev->fpriv_list_lock);
	FUNC7(hpriv);
	return rc;
}