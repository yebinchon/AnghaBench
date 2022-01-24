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
struct at76_req_scan {void* probe_delay; void* max_channel_time; void* min_channel_time; scalar_t__ international_scan; int /*<<< orphan*/  scan_type; int /*<<< orphan*/  channel; int /*<<< orphan*/  bssid; } ;
struct at76_priv {int /*<<< orphan*/  udev; int /*<<< orphan*/  scan_max_time; int /*<<< orphan*/  scan_min_time; int /*<<< orphan*/  channel; } ;
typedef  int /*<<< orphan*/  scan ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SCAN ; 
 int /*<<< orphan*/  SCAN_TYPE_PASSIVE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct at76_req_scan*,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct at76_req_scan*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct at76_priv *priv)
{
	struct at76_req_scan scan;
	int ret;

	FUNC4(&scan, 0, sizeof(struct at76_req_scan));
	FUNC3(scan.bssid);

	scan.channel = priv->channel;
	scan.scan_type = SCAN_TYPE_PASSIVE;
	scan.international_scan = 0;
	scan.min_channel_time = FUNC2(priv->scan_min_time);
	scan.max_channel_time = FUNC2(priv->scan_max_time);
	scan.probe_delay = FUNC2(0);

	ret = FUNC1(priv->udev, CMD_SCAN, &scan, sizeof(scan));
	if (ret >= 0)
		ret = FUNC0(priv->udev, CMD_SCAN);

	return ret;
}