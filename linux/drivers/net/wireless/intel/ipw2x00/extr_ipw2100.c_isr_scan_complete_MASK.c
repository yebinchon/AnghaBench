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
typedef  int /*<<< orphan*/  u32 ;
struct ipw2100_priv {int /*<<< orphan*/  scan_event; scalar_t__ user_requested_scan; int /*<<< orphan*/  status; TYPE_1__* ieee; } ;
struct TYPE_2__ {int /*<<< orphan*/  scans; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  STATUS_SCANNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_wq ; 

__attribute__((used)) static void FUNC5(struct ipw2100_priv *priv, u32 status)
{
	FUNC0("scan complete\n");
	/* Age the scan results... */
	priv->ieee->scans++;
	priv->status &= ~STATUS_SCANNING;

	/* Only userspace-requested scan completion events go out immediately */
	if (!priv->user_requested_scan) {
		FUNC4(&priv->scan_event,
				      FUNC3(FUNC2(4000)));
	} else {
		priv->user_requested_scan = 0;
		FUNC1(system_wq, &priv->scan_event, 0);
	}
}