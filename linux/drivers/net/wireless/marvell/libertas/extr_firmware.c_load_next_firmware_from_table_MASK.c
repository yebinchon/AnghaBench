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
struct lbs_private {scalar_t__ fw_model; struct lbs_fw_table const* fw_iter; int /*<<< orphan*/ * helper_fw; struct lbs_fw_table const* fw_table; } ;
typedef  struct lbs_fw_table {scalar_t__ model; int /*<<< orphan*/  helper; } const lbs_fw_table ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  helper_firmware_cb ; 
 int /*<<< orphan*/  FUNC1 (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct lbs_private *priv)
{
	const struct lbs_fw_table *iter;

	if (!priv->fw_iter)
		iter = priv->fw_table;
	else
		iter = ++priv->fw_iter;

	if (priv->helper_fw) {
		FUNC2(priv->helper_fw);
		priv->helper_fw = NULL;
	}

next:
	if (!iter->helper) {
		/* End of table hit. */
		FUNC1(priv, -ENOENT, NULL, NULL);
		return;
	}

	if (iter->model != priv->fw_model) {
		iter++;
		goto next;
	}

	priv->fw_iter = iter;
	FUNC0(priv, iter->helper, helper_firmware_cb);
}