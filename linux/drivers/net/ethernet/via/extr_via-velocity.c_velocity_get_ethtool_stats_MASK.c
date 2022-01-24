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
typedef  int /*<<< orphan*/  u32 ;
struct velocity_info {int /*<<< orphan*/  lock; int /*<<< orphan*/ * mib_counter; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct velocity_info* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  velocity_gstrings ; 
 int /*<<< orphan*/  FUNC5 (struct velocity_info*) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev,
				       struct ethtool_stats *stats, u64 *data)
{
	if (FUNC2(dev)) {
		struct velocity_info *vptr = FUNC1(dev);
		u32 *p = vptr->mib_counter;
		int i;

		FUNC3(&vptr->lock);
		FUNC5(vptr);
		FUNC4(&vptr->lock);

		for (i = 0; i < FUNC0(velocity_gstrings); i++)
			*data++ = *p++;
	}
}