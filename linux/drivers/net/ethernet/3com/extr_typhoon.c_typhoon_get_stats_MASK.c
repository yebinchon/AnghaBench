#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device_stats {int dummy; } ;
struct typhoon {scalar_t__ card_state; struct net_device_stats stats_saved; TYPE_1__* dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device_stats stats; } ;

/* Variables and functions */
 scalar_t__ Sleeping ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct typhoon* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct typhoon*) ; 

__attribute__((used)) static struct net_device_stats *
FUNC4(struct net_device *dev)
{
	struct typhoon *tp = FUNC1(dev);
	struct net_device_stats *stats = &tp->dev->stats;
	struct net_device_stats *saved = &tp->stats_saved;

	FUNC2();
	if(tp->card_state == Sleeping)
		return saved;

	if(FUNC3(tp) < 0) {
		FUNC0(dev, "error getting stats\n");
		return saved;
	}

	return stats;
}