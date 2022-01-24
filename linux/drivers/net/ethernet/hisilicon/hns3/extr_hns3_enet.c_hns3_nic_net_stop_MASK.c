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
struct hns3_nic_priv {int /*<<< orphan*/  ae_handle; int /*<<< orphan*/  state; } ;
struct hnae3_handle {TYPE_1__* ae_algo; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* set_timer_task ) (int /*<<< orphan*/ ,int) ;} ;
struct TYPE_3__ {TYPE_2__* ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNS3_NIC_STATE_DOWN ; 
 int /*<<< orphan*/  drv ; 
 struct hnae3_handle* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct hns3_nic_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hnae3_handle*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *netdev)
{
	struct hns3_nic_priv *priv = FUNC2(netdev);
	struct hnae3_handle *h = FUNC0(netdev);

	if (FUNC7(HNS3_NIC_STATE_DOWN, &priv->state))
		return 0;

	FUNC4(h, drv, netdev, "net stop\n");

	if (h->ae_algo->ops->set_timer_task)
		h->ae_algo->ops->set_timer_task(priv->ae_handle, false);

	FUNC5(netdev);
	FUNC3(netdev);

	FUNC1(netdev);

	return 0;
}