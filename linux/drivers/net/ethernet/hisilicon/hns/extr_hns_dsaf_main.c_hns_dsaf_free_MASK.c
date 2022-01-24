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
struct dsaf_drv_priv {int /*<<< orphan*/ * soft_mac_tbl; } ;
struct dsaf_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dsaf_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dsaf_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct dsaf_device *dsaf_dev)
{
	struct dsaf_drv_priv *priv =
	    (struct dsaf_drv_priv *)FUNC0(dsaf_dev);

	FUNC1(dsaf_dev);

	/* free all mac mem */
	FUNC2(priv->soft_mac_tbl);
	priv->soft_mac_tbl = NULL;
}