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
typedef  int /*<<< orphan*/  u64 ;
struct wiphy {int dummy; } ;
struct wil6210_vif {scalar_t__ mid; } ;
struct wil6210_priv {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct wil6210_vif* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct wil6210_priv*,char*,int) ; 
 struct wil6210_priv* FUNC2 (struct wiphy*) ; 
 int FUNC3 (struct wil6210_priv*) ; 

__attribute__((used)) static int
FUNC4(struct wiphy *wiphy, struct net_device *dev,
			     u64 reqid)
{
	struct wil6210_priv *wil = FUNC2(wiphy);
	struct wil6210_vif *vif = FUNC0(dev);
	int rc;

	if (vif->mid != 0)
		return -EOPNOTSUPP;

	rc = FUNC3(wil);
	/* device would return error if it thinks PNO is already stopped.
	 * ignore the return code so user space and driver gets back in-sync
	 */
	FUNC1(wil, "sched scan stopped (%d)\n", rc);

	return 0;
}