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
struct net_device {int dummy; } ;
struct ath6kl_vif {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct ath6kl_vif*) ; 
 struct ath6kl_vif* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct wiphy *wiphy,
				      struct net_device *dev, u64 reqid)
{
	struct ath6kl_vif *vif = FUNC1(dev);
	bool stopped;

	stopped = FUNC0(vif);

	if (!stopped)
		return -EIO;

	return 0;
}