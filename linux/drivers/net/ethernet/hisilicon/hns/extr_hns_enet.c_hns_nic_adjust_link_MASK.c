#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {TYPE_1__* phydev; } ;
struct hns_nic_priv {int link; struct hnae_handle* ae_handle; } ;
struct hnae_handle {TYPE_3__* dev; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {scalar_t__ (* get_status ) (struct hnae_handle*) ;int /*<<< orphan*/  (* adjust_link ) (struct hnae_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ (* need_adjust_link ) (struct hnae_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {scalar_t__ link; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct hns_nic_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct hnae_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hnae_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct hnae_handle*) ; 

__attribute__((used)) static void FUNC9(struct net_device *ndev)
{
	struct hns_nic_priv *priv = FUNC2(ndev);
	struct hnae_handle *h = priv->ae_handle;
	int state = 1;

	/* If there is no phy, do not need adjust link */
	if (ndev->phydev) {
		/* When phy link down, do nothing */
		if (ndev->phydev->link == 0)
			return;

		if (h->dev->ops->need_adjust_link(h, ndev->phydev->speed,
						  ndev->phydev->duplex)) {
			/* because Hi161X chip don't support to change gmac
			 * speed and duplex with traffic. Delay 200ms to
			 * make sure there is no more data in chip FIFO.
			 */
			FUNC3(ndev);
			FUNC0(200);
			h->dev->ops->adjust_link(h, ndev->phydev->speed,
						 ndev->phydev->duplex);
			FUNC4(ndev);
		}
	}

	state = state && h->dev->ops->get_status(h);

	if (state != priv->link) {
		if (state) {
			FUNC4(ndev);
			FUNC5(ndev);
			FUNC1(ndev, "link up\n");
		} else {
			FUNC3(ndev);
			FUNC1(ndev, "link down\n");
		}
		priv->link = state;
	}
}