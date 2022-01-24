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
struct mwifiex_private {scalar_t__ bss_type; int auto_tdls_timer_active; int /*<<< orphan*/  auto_tdls_timer; TYPE_1__* adapter; } ;
struct TYPE_2__ {scalar_t__ auto_tdls; int /*<<< orphan*/  fw_cap_info; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MWIFIEX_BSS_TYPE_STA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_private*) ; 

void FUNC3(struct mwifiex_private *priv)
{
	if (FUNC0(priv->adapter->fw_cap_info) &&
	    priv->adapter->auto_tdls &&
	    priv->bss_type == MWIFIEX_BSS_TYPE_STA) {
		priv->auto_tdls_timer_active = false;
		FUNC1(&priv->auto_tdls_timer);
		FUNC2(priv);
	}
}