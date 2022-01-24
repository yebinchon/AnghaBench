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
struct net_device {int dummy; } ;
struct gelic_wl_info {scalar_t__ scan_stat; int /*<<< orphan*/  scan_done; } ;
struct gelic_port {int dummy; } ;
struct gelic_eurus_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GELIC_EURUS_CMD_DISASSOC ; 
 scalar_t__ GELIC_WL_SCAN_STAT_SCANNING ; 
 int /*<<< orphan*/  HZ ; 
 struct gelic_eurus_cmd* FUNC0 (struct gelic_wl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gelic_wl_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gelic_eurus_cmd*) ; 
 struct gelic_port* FUNC3 (struct net_device*) ; 
 struct gelic_wl_info* FUNC4 (struct gelic_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct net_device *netdev)
{
	struct gelic_port *port = FUNC3(netdev);
	struct gelic_wl_info *wl = FUNC4(port);
	struct gelic_eurus_cmd *cmd;

	/*
	 * If scann process is running on chip,
	 * further requests will be rejected
	 */
	if (wl->scan_stat == GELIC_WL_SCAN_STAT_SCANNING)
		FUNC5(&wl->scan_done, HZ);

	cmd = FUNC0(wl, GELIC_EURUS_CMD_DISASSOC, NULL, 0);
	FUNC2(cmd);
	FUNC1(wl, NULL);
}