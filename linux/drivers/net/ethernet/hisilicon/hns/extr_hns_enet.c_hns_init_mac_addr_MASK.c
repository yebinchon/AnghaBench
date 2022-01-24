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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct hns_nic_priv {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct hns_nic_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *ndev)
{
	struct hns_nic_priv *priv = FUNC3(ndev);

	if (!FUNC1(priv->dev, ndev->dev_addr, ETH_ALEN)) {
		FUNC2(ndev);
		FUNC0(priv->dev, "No valid mac, use random mac %pM",
			 ndev->dev_addr);
	}
}