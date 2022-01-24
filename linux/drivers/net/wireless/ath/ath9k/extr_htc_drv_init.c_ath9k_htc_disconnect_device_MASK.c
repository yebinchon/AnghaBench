#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct htc_target {TYPE_2__* drv_priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  hw; TYPE_1__* ah; } ;
struct TYPE_4__ {int /*<<< orphan*/  ah_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AH_UNPLUGGED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct htc_target *htc_handle, bool hotunplug)
{
	if (htc_handle->drv_priv) {

		/* Check if the device has been yanked out. */
		if (hotunplug)
			htc_handle->drv_priv->ah->ah_flags |= AH_UNPLUGGED;

		FUNC0(htc_handle->drv_priv);
		FUNC1(htc_handle->drv_priv);
		FUNC2(htc_handle->drv_priv->hw);
	}
}