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
typedef  int /*<<< orphan*/  u64 ;
struct pcnet32_private {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_test {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_TEST_FL_FAILED ; 
 int /*<<< orphan*/  ETH_TEST_FL_OFFLINE ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  hw ; 
 struct pcnet32_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcnet32_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev,
				 struct ethtool_test *test, u64 * data)
{
	struct pcnet32_private *lp = FUNC0(dev);
	int rc;

	if (test->flags == ETH_TEST_FL_OFFLINE) {
		rc = FUNC2(dev, data);
		if (rc) {
			FUNC1(lp, hw, KERN_DEBUG, dev,
				     "Loopback test failed\n");
			test->flags |= ETH_TEST_FL_FAILED;
		} else
			FUNC1(lp, hw, KERN_DEBUG, dev,
				     "Loopback test passed\n");
	} else
		FUNC1(lp, hw, KERN_DEBUG, dev,
			     "No tests to run (specify 'Offline' on ethtool)\n");
}