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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct qede_dev {scalar_t__ state; int /*<<< orphan*/  cdev; TYPE_2__* ops; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_4__ {TYPE_1__* common; int /*<<< orphan*/  (* req_bulletin_update_mac ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* check_mac ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* update_mac ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct qede_dev*,int /*<<< orphan*/ ,char*) ; 
 int EFAULT ; 
 int EINVAL ; 
 scalar_t__ FUNC3 (struct qede_dev*) ; 
 int /*<<< orphan*/  NETIF_MSG_IFDOWN ; 
 scalar_t__ QEDE_STATE_OPEN ; 
 int /*<<< orphan*/  QED_FILTER_XCAST_TYPE_ADD ; 
 int /*<<< orphan*/  QED_FILTER_XCAST_TYPE_DEL ; 
 int /*<<< orphan*/  FUNC4 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct qede_dev* FUNC8 (struct net_device*) ; 
 int FUNC9 (struct qede_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC13(struct net_device *ndev, void *p)
{
	struct qede_dev *edev = FUNC8(ndev);
	struct sockaddr *addr = p;
	int rc = 0;

	/* Make sure the state doesn't transition while changing the MAC.
	 * Also, all flows accessing the dev_addr field are doing that under
	 * this lock.
	 */
	FUNC4(edev);

	if (!FUNC7(addr->sa_data)) {
		FUNC1(edev, "The MAC address is not valid\n");
		rc = -EFAULT;
		goto out;
	}

	if (!edev->ops->check_mac(edev->cdev, addr->sa_data)) {
		FUNC1(edev, "qed prevents setting MAC %pM\n",
			  addr->sa_data);
		rc = -EINVAL;
		goto out;
	}

	if (edev->state == QEDE_STATE_OPEN) {
		/* Remove the previous primary mac */
		rc = FUNC9(edev, QED_FILTER_XCAST_TYPE_DEL,
					   ndev->dev_addr);
		if (rc)
			goto out;
	}

	FUNC6(ndev->dev_addr, addr->sa_data);
	FUNC0(edev, "Setting device MAC to %pM\n", addr->sa_data);

	if (edev->state != QEDE_STATE_OPEN) {
		FUNC2(edev, NETIF_MSG_IFDOWN,
			   "The device is currently down\n");
		/* Ask PF to explicitly update a copy in bulletin board */
		if (FUNC3(edev) && edev->ops->req_bulletin_update_mac)
			edev->ops->req_bulletin_update_mac(edev->cdev,
							   ndev->dev_addr);
		goto out;
	}

	edev->ops->common->update_mac(edev->cdev, ndev->dev_addr);

	rc = FUNC9(edev, QED_FILTER_XCAST_TYPE_ADD,
				   ndev->dev_addr);
out:
	FUNC5(edev);
	return rc;
}