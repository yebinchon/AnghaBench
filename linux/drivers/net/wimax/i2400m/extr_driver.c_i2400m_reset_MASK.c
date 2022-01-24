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
struct net_device {scalar_t__ reg_state; } ;
struct TYPE_2__ {struct net_device* net_dev; } ;
struct i2400m {int (* bus_reset ) (struct i2400m*,int) ;TYPE_1__ wimax_dev; } ;
typedef  enum i2400m_reset_type { ____Placeholder_i2400m_reset_type } i2400m_reset_type ;

/* Variables and functions */
 scalar_t__ NETREG_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct i2400m*,int) ; 

int FUNC3(struct i2400m *i2400m, enum i2400m_reset_type rt)
{
	struct net_device *net_dev = i2400m->wimax_dev.net_dev;

	/*
	 * Make sure we stop TXs and down the carrier before
	 * resetting; this is needed to avoid things like
	 * i2400m_wake_tx() scheduling stuff in parallel.
	 */
	if (net_dev->reg_state == NETREG_REGISTERED) {
		FUNC1(net_dev);
		FUNC0(net_dev);
	}
	return i2400m->bus_reset(i2400m, rt);
}