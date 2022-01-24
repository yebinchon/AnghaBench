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
typedef  int /*<<< orphan*/  u32 ;
struct lbs_private {int /*<<< orphan*/  driver_lock; int /*<<< orphan*/  fw_model; int /*<<< orphan*/ * fw_iter; struct lbs_fw_table const* fw_table; scalar_t__ fw_callback; struct device* fw_device; } ;
struct lbs_fw_table {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ lbs_fw_cb ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct lbs_private *priv, struct device *device,
			    u32 card_model, const struct lbs_fw_table *fw_table,
			    lbs_fw_cb callback)
{
	unsigned long flags;

	FUNC2(&priv->driver_lock, flags);
	if (priv->fw_callback) {
		FUNC0("firmware load already in progress\n");
		FUNC3(&priv->driver_lock, flags);
		return -EBUSY;
	}

	priv->fw_device = device;
	priv->fw_callback = callback;
	priv->fw_table = fw_table;
	priv->fw_iter = NULL;
	priv->fw_model = card_model;
	FUNC3(&priv->driver_lock, flags);

	FUNC0("Starting async firmware load\n");
	FUNC1(priv);
	return 0;
}