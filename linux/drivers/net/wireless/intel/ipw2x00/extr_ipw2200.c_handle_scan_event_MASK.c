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
struct ipw_priv {int /*<<< orphan*/  scan_event; scalar_t__ user_requested_scan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_wq ; 

__attribute__((used)) static void FUNC4(struct ipw_priv *priv)
{
	/* Only userspace-requested scan completion events go out immediately */
	if (!priv->user_requested_scan) {
		FUNC3(&priv->scan_event,
				      FUNC2(FUNC1(4000)));
	} else {
		priv->user_requested_scan = 0;
		FUNC0(system_wq, &priv->scan_event, 0);
	}
}