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
struct hns3_nic_priv {int /*<<< orphan*/  ae_handle; } ;
struct hnae3_knic_private_info {int /*<<< orphan*/ * prio_tc; } ;
struct hnae3_handle {TYPE_2__* ae_algo; struct hnae3_knic_private_info kinfo; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_timer_task ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int HNAE3_MAX_USER_PRIO ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (struct hns3_nic_priv*) ; 
 struct hnae3_handle* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,int) ; 
 struct hns3_nic_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct hnae3_handle*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct net_device *netdev)
{
	struct hns3_nic_priv *priv = FUNC6(netdev);
	struct hnae3_handle *h = FUNC1(netdev);
	struct hnae3_knic_private_info *kinfo;
	int i, ret;

	if (FUNC3(netdev))
		return -EBUSY;

	FUNC8(netdev);

	ret = FUNC4(netdev);
	if (ret)
		return ret;

	ret = FUNC2(netdev);
	if (ret) {
		FUNC5(netdev, "net up fail, ret=%d!\n", ret);
		return ret;
	}

	kinfo = &h->kinfo;
	for (i = 0; i < HNAE3_MAX_USER_PRIO; i++)
		FUNC7(netdev, i, kinfo->prio_tc[i]);

	if (h->ae_algo->ops->set_timer_task)
		h->ae_algo->ops->set_timer_task(priv->ae_handle, true);

	FUNC0(priv);

	FUNC9(h, drv, netdev, "net open\n");

	return 0;
}