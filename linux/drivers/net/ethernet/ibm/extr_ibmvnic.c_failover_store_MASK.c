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
struct net_device {int dummy; } ;
struct ibmvnic_adapter {TYPE_1__* vdev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
typedef  scalar_t__ __be64 ;
struct TYPE_2__ {int /*<<< orphan*/  unit_address; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  H_GET_SESSION_TOKEN ; 
 int /*<<< orphan*/  H_SESSION_ERR_DETECTED ; 
 int /*<<< orphan*/  H_VIOCTL ; 
 int PLPAR_HCALL_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct net_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,long) ; 
 struct ibmvnic_adapter* FUNC4 (struct net_device*) ; 
 long FUNC5 (int /*<<< orphan*/ ,unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *attr,
			      const char *buf, size_t count)
{
	struct net_device *netdev = FUNC1(dev);
	struct ibmvnic_adapter *adapter = FUNC4(netdev);
	unsigned long retbuf[PLPAR_HCALL_BUFSIZE];
	__be64 session_token;
	long rc;

	if (!FUNC7(buf, "1"))
		return -EINVAL;

	rc = FUNC5(H_VIOCTL, retbuf, adapter->vdev->unit_address,
			 H_GET_SESSION_TOKEN, 0, 0, 0);
	if (rc) {
		FUNC3(netdev, "Couldn't retrieve session token, rc %ld\n",
			   rc);
		return -EINVAL;
	}

	session_token = (__be64)retbuf[0];
	FUNC2(netdev, "Initiating client failover, session id %llx\n",
		   FUNC0(session_token));
	rc = FUNC6(H_VIOCTL, adapter->vdev->unit_address,
				H_SESSION_ERR_DETECTED, session_token, 0, 0);
	if (rc) {
		FUNC3(netdev, "Client initiated failover failed, rc %ld\n",
			   rc);
		return -EINVAL;
	}

	return count;
}