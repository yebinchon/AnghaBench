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
struct net_device {int watchdog_timeo; } ;
struct hns_nic_priv {int dummy; } ;

/* Variables and functions */
 int HNS_NIC_TX_TIMEOUT ; 
 int HNS_TX_TIMEO_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (struct hns_nic_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int) ; 
 struct hns_nic_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *ndev)
{
	struct hns_nic_priv *priv = FUNC2(ndev);

	if (ndev->watchdog_timeo < HNS_TX_TIMEO_LIMIT) {
		ndev->watchdog_timeo *= 2;
		FUNC1(ndev, "watchdog_timo changed to %d.\n",
			    ndev->watchdog_timeo);
	} else {
		ndev->watchdog_timeo = HNS_NIC_TX_TIMEOUT;
		FUNC0(priv);
	}
}