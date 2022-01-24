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
struct TYPE_2__ {int /*<<< orphan*/ * mac_addr; int /*<<< orphan*/  cmd; int /*<<< orphan*/  first; } ;
union ibmvnic_crq {TYPE_1__ change_mac_addr; } ;
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int /*<<< orphan*/ * dev_addr; } ;
struct ibmvnic_adapter {int /*<<< orphan*/ * mac_addr; scalar_t__ fw_done_rc; int /*<<< orphan*/  fw_done; } ;
typedef  int /*<<< orphan*/  crq ;

/* Variables and functions */
 int /*<<< orphan*/  CHANGE_MAC_ADDR ; 
 int EADDRNOTAVAIL ; 
 int EIO ; 
 int /*<<< orphan*/  IBMVNIC_CRQ_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ibmvnic_adapter*,union ibmvnic_crq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (union ibmvnic_crq*,int /*<<< orphan*/ ,int) ; 
 struct ibmvnic_adapter* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev, u8 *dev_addr)
{
	struct ibmvnic_adapter *adapter = FUNC5(netdev);
	union ibmvnic_crq crq;
	int rc;

	if (!FUNC3(dev_addr)) {
		rc = -EADDRNOTAVAIL;
		goto err;
	}

	FUNC4(&crq, 0, sizeof(crq));
	crq.change_mac_addr.first = IBMVNIC_CRQ_CMD;
	crq.change_mac_addr.cmd = CHANGE_MAC_ADDR;
	FUNC0(&crq.change_mac_addr.mac_addr[0], dev_addr);

	FUNC2(&adapter->fw_done);
	rc = FUNC1(adapter, &crq);
	if (rc) {
		rc = -EIO;
		goto err;
	}

	FUNC6(&adapter->fw_done);
	/* netdev->dev_addr is changed in handle_change_mac_rsp function */
	if (adapter->fw_done_rc) {
		rc = -EIO;
		goto err;
	}

	return 0;
err:
	FUNC0(adapter->mac_addr, netdev->dev_addr);
	return rc;
}