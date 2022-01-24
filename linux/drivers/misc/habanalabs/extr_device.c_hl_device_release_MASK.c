#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct inode {int dummy; } ;
struct hl_fpriv {int /*<<< orphan*/  ctx_mgr; int /*<<< orphan*/  hdev; int /*<<< orphan*/  cb_mgr; } ;
struct file {struct hl_fpriv* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hl_fpriv*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *filp)
{
	struct hl_fpriv *hpriv = filp->private_data;

	FUNC0(hpriv->hdev, &hpriv->cb_mgr);
	FUNC1(hpriv->hdev, &hpriv->ctx_mgr);

	filp->private_data = NULL;

	FUNC2(hpriv);

	return 0;
}