#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
typedef  int /*<<< orphan*/  atomic_t ;
struct TYPE_3__ {int offset; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (struct net_device*) ; 
 TYPE_1__* xennet_stats ; 

__attribute__((used)) static void FUNC3(struct net_device *dev,
				     struct ethtool_stats *stats, u64 * data)
{
	void *np = FUNC2(dev);
	int i;

	for (i = 0; i < FUNC0(xennet_stats); i++)
		data[i] = FUNC1((atomic_t *)(np + xennet_stats[i].offset));
}