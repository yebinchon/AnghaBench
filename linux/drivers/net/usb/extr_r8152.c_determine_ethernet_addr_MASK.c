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
struct sockaddr {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
struct r8152 {scalar_t__ version; struct net_device* netdev; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLA_BACKUP ; 
 int /*<<< orphan*/  PLA_IDR ; 
 scalar_t__ RTL_VER_01 ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct r8152*,int /*<<< orphan*/ ,struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct r8152*,int /*<<< orphan*/ ,struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct r8152*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  probe ; 
 int FUNC6 (struct r8152*,struct sockaddr*) ; 

__attribute__((used)) static int FUNC7(struct r8152 *tp, struct sockaddr *sa)
{
	struct net_device *dev = tp->netdev;
	int ret;

	sa->sa_family = dev->type;

	if (tp->version == RTL_VER_01) {
		ret = FUNC5(tp, PLA_IDR, 8, sa->sa_data);
	} else {
		/* if device doesn't support MAC pass through this will
		 * be expected to be non-zero
		 */
		ret = FUNC6(tp, sa);
		if (ret < 0)
			ret = FUNC5(tp, PLA_BACKUP, 8, sa->sa_data);
	}

	if (ret < 0) {
		FUNC3(tp, probe, dev, "Get ether addr fail\n");
	} else if (!FUNC2(sa->sa_data)) {
		FUNC3(tp, probe, dev, "Invalid ether addr %pM\n",
			  sa->sa_data);
		FUNC0(dev);
		FUNC1(sa->sa_data, dev->dev_addr);
		FUNC4(tp, probe, dev, "Random ether addr %pM\n",
			   sa->sa_data);
		return 0;
	}

	return ret;
}