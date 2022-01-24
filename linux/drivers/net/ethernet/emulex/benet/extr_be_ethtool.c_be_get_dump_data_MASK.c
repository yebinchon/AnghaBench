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
struct net_device {int dummy; } ;
struct ethtool_dump {int /*<<< orphan*/  len; } ;
struct be_adapter {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  MAX_PRIVILEGES ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct be_adapter*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*,int /*<<< orphan*/ ) ; 
 struct be_adapter* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int
FUNC4(struct net_device *netdev, struct ethtool_dump *dump,
		 void *buf)
{
	struct be_adapter *adapter = FUNC3(netdev);
	int status;

	if (!FUNC2(adapter, MAX_PRIVILEGES))
		return -EOPNOTSUPP;

	status = FUNC1(adapter, dump->len, buf);
	return FUNC0(status);
}