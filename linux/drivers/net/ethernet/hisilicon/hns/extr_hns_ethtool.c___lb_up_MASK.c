#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct hns_nic_priv {struct hnae_handle* ae_handle; } ;
struct hnae_handle {scalar_t__ phy_if; TYPE_2__* dev; } ;
typedef  enum hnae_loop { ____Placeholder_hnae_loop } hnae_loop ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* start ) (struct hnae_handle*) ;int /*<<< orphan*/  (* adjust_link ) (struct hnae_handle*,int,int) ;} ;

/* Variables and functions */
 int NIC_LB_TEST_WAIT_PHY_LINK_TIME ; 
 scalar_t__ PHY_INTERFACE_MODE_XGMII ; 
 int FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct hns_nic_priv* FUNC3 (struct net_device*) ; 
 int FUNC4 (struct hnae_handle*) ; 
 int /*<<< orphan*/  FUNC5 (struct hnae_handle*,int,int) ; 

__attribute__((used)) static int FUNC6(struct net_device *ndev,
		   enum hnae_loop loop_mode)
{
#define NIC_LB_TEST_WAIT_PHY_LINK_TIME 300
	struct hns_nic_priv *priv = FUNC3(ndev);
	struct hnae_handle *h = priv->ae_handle;
	int speed, duplex;
	int ret;

	FUNC1(ndev);

	ret = FUNC0(ndev, loop_mode);
	if (ret)
		return ret;

	FUNC2(200);

	ret = h->dev->ops->start ? h->dev->ops->start(h) : 0;
	if (ret)
		return ret;

	/* link adjust duplex*/
	if (priv->ae_handle->phy_if != PHY_INTERFACE_MODE_XGMII)
		speed = 1000;
	else
		speed = 10000;
	duplex = 1;

	h->dev->ops->adjust_link(h, speed, duplex);

	/* wait adjust link done and phy ready */
	FUNC2(NIC_LB_TEST_WAIT_PHY_LINK_TIME);

	return 0;
}