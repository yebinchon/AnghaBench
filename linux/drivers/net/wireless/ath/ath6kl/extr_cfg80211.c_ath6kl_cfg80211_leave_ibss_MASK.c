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
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct ath6kl_vif {scalar_t__ ssid_len; int /*<<< orphan*/  ssid; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct ath6kl_vif*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath6kl_vif*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ath6kl_vif* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct wiphy *wiphy,
				      struct net_device *dev)
{
	struct ath6kl_vif *vif = FUNC3(dev);

	if (!FUNC0(vif))
		return -EIO;

	FUNC1(vif);
	FUNC2(vif->ssid, 0, sizeof(vif->ssid));
	vif->ssid_len = 0;

	return 0;
}