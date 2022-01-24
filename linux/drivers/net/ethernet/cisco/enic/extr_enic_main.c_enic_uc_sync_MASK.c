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
struct enic {scalar_t__ uc_count; } ;

/* Variables and functions */
 scalar_t__ ENIC_UNICAST_PERFECT_FILTERS ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct enic*,int /*<<< orphan*/  const*) ; 
 struct enic* FUNC1 (struct net_device*) ; 
 unsigned int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,scalar_t__,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, const u8 *uc_addr)
{
	struct enic *enic = FUNC1(netdev);

	if (enic->uc_count == ENIC_UNICAST_PERFECT_FILTERS) {
		unsigned int uc_count = FUNC2(netdev);

		FUNC3(netdev, "Registering only %d out of %d unicast addresses\n",
			    ENIC_UNICAST_PERFECT_FILTERS, uc_count);

		return -ENOSPC;
	}

	FUNC0(enic, uc_addr);
	enic->uc_count++;

	return 0;
}