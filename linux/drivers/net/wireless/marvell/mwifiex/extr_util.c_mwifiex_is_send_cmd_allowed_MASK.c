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
typedef  int u8 ;
struct mwifiex_private {TYPE_1__* adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  fw_cap_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mwifiex_private*) ; 
 scalar_t__ FUNC2 (struct mwifiex_private*) ; 

u8 FUNC3(struct mwifiex_private *priv)
{
	if (!priv || !FUNC0(priv->adapter->fw_cap_info))
		return true;

	if (FUNC1(priv) ||
	    FUNC2(priv))
		return false;

	return true;
}