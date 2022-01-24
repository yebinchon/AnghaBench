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
struct hns_mac_cb {int /*<<< orphan*/ * phy_dev; int /*<<< orphan*/  fw_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hns_mac_cb *mac_cb)
{
	if (!FUNC2(mac_cb->fw_port) || !mac_cb->phy_dev)
		return;

	FUNC1(mac_cb->phy_dev);
	FUNC0(mac_cb->phy_dev);

	mac_cb->phy_dev = NULL;
}