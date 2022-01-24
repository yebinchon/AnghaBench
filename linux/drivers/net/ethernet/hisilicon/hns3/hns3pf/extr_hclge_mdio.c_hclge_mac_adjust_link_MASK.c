#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {TYPE_1__* phydev; } ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ link; int speed; int duplex; } ;

/* Variables and functions */
 int FUNC0 (struct hclge_dev*) ; 
 int FUNC1 (struct hclge_dev*,int,int) ; 
 struct hclge_vport* FUNC2 (struct hnae3_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev)
{
	struct hnae3_handle *h = *((void **)FUNC4(netdev));
	struct hclge_vport *vport = FUNC2(h);
	struct hclge_dev *hdev = vport->back;
	int duplex, speed;
	int ret;

	/* When phy link down, do nothing */
	if (netdev->phydev->link == 0)
		return;

	speed = netdev->phydev->speed;
	duplex = netdev->phydev->duplex;

	ret = FUNC1(hdev, speed, duplex);
	if (ret)
		FUNC3(netdev, "failed to adjust link.\n");

	ret = FUNC0(hdev);
	if (ret)
		FUNC3(netdev, "failed to configure flow control.\n");
}