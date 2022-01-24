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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct enic {scalar_t__ mc_count; } ;

/* Variables and functions */
 scalar_t__ ENIC_MULTICAST_PERFECT_FILTERS ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct enic*,int /*<<< orphan*/  const*) ; 
 unsigned int FUNC1 (struct net_device*) ; 
 struct enic* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,scalar_t__,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, const u8 *mc_addr)
{
	struct enic *enic = FUNC2(netdev);

	if (enic->mc_count == ENIC_MULTICAST_PERFECT_FILTERS) {
		unsigned int mc_count = FUNC1(netdev);

		FUNC3(netdev, "Registering only %d out of %d multicast addresses\n",
			    ENIC_MULTICAST_PERFECT_FILTERS, mc_count);

		return -ENOSPC;
	}

	FUNC0(enic, mc_addr);
	enic->mc_count++;

	return 0;
}