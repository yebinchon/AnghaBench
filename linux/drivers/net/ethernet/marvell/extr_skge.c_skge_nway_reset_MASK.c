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
struct skge_port {scalar_t__ autoneg; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int EINVAL ; 
 struct skge_port* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct skge_port*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev)
{
	struct skge_port *skge = FUNC0(dev);

	if (skge->autoneg != AUTONEG_ENABLE || !FUNC1(dev))
		return -EINVAL;

	FUNC2(skge);
	return 0;
}