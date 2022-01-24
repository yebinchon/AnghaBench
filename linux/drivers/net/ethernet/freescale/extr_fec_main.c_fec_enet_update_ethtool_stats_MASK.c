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
struct net_device {int dummy; } ;
struct fec_enet_private {scalar_t__ hwp; int /*<<< orphan*/ * ethtool_stats; } ;
struct TYPE_3__ {scalar_t__ offset; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* fec_stats ; 
 struct fec_enet_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct fec_enet_private *fep = FUNC1(dev);
	int i;

	for (i = 0; i < FUNC0(fec_stats); i++)
		fep->ethtool_stats[i] = FUNC2(fep->hwp + fec_stats[i].offset);
}