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
typedef  scalar_t__ u32 ;
struct dsaf_drv_priv {TYPE_1__* soft_mac_tbl; } ;
struct dsaf_device {int /*<<< orphan*/  tcam_lock; scalar_t__ tcam_max_num; int /*<<< orphan*/  dsaf_ver; } ;
struct TYPE_2__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DSAFV2_MAC_FUZZY_TCAM_NUM ; 
 int /*<<< orphan*/  DSAF_INVALID_ENTRY_IDX ; 
 scalar_t__ DSAF_TCAM_SUM ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct dsaf_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (struct dsaf_device*) ; 
 int FUNC4 (struct dsaf_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct dsaf_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dsaf_device *dsaf_dev)
{
	struct dsaf_drv_priv *priv =
	    (struct dsaf_drv_priv *)FUNC3(dsaf_dev);
	u32 i;
	int ret;

	if (FUNC1(dsaf_dev))
		return 0;

	if (FUNC0(dsaf_dev->dsaf_ver))
		dsaf_dev->tcam_max_num = DSAF_TCAM_SUM;
	else
		dsaf_dev->tcam_max_num =
			DSAF_TCAM_SUM - DSAFV2_MAC_FUZZY_TCAM_NUM;

	FUNC6(&dsaf_dev->tcam_lock);
	ret = FUNC4(dsaf_dev);
	if (ret)
		return ret;

	/* malloc mem for tcam mac key(vlan+mac) */
	priv->soft_mac_tbl = FUNC7(FUNC2(DSAF_TCAM_SUM,
						sizeof(*priv->soft_mac_tbl)));
	if (!priv->soft_mac_tbl) {
		ret = -ENOMEM;
		goto remove_hw;
	}

	/*all entry invall */
	for (i = 0; i < DSAF_TCAM_SUM; i++)
		(priv->soft_mac_tbl + i)->index = DSAF_INVALID_ENTRY_IDX;

	return 0;

remove_hw:
	FUNC5(dsaf_dev);
	return ret;
}