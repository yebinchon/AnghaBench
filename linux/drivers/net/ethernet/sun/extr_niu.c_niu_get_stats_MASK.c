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
struct rtnl_link_stats64 {int dummy; } ;
struct niu {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct niu* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct niu*,struct rtnl_link_stats64*) ; 
 int /*<<< orphan*/  FUNC3 (struct niu*,struct rtnl_link_stats64*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev,
			  struct rtnl_link_stats64 *stats)
{
	struct niu *np = FUNC0(dev);

	if (FUNC1(dev)) {
		FUNC2(np, stats);
		FUNC3(np, stats);
	}
}