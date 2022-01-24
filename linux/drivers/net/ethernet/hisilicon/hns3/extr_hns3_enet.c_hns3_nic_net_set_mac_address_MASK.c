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
typedef  int /*<<< orphan*/  u8 ;
struct sockaddr {scalar_t__ sa_data; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct hnae3_handle {TYPE_2__* ae_algo; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_mac_addr ) (struct hnae3_handle*,scalar_t__,int) ;} ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct hnae3_handle* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,scalar_t__) ; 
 int FUNC6 (struct hnae3_handle*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev, void *p)
{
	struct hnae3_handle *h = FUNC2(netdev);
	struct sockaddr *mac_addr = p;
	int ret;

	if (!mac_addr || !FUNC3((const u8 *)mac_addr->sa_data))
		return -EADDRNOTAVAIL;

	if (FUNC1(netdev->dev_addr, mac_addr->sa_data)) {
		FUNC5(netdev, "already using mac address %pM\n",
			    mac_addr->sa_data);
		return 0;
	}

	ret = h->ae_algo->ops->set_mac_addr(h, mac_addr->sa_data, false);
	if (ret) {
		FUNC4(netdev, "set_mac_address fail, ret=%d!\n", ret);
		return ret;
	}

	FUNC0(netdev->dev_addr, mac_addr->sa_data);

	return 0;
}