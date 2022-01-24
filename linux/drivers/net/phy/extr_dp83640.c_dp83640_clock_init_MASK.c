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
struct mii_bus {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int max_adj; int /*<<< orphan*/  pin_config; int /*<<< orphan*/  verify; int /*<<< orphan*/  enable; int /*<<< orphan*/  settime64; int /*<<< orphan*/  gettime64; int /*<<< orphan*/  adjtime; int /*<<< orphan*/  adjfine; scalar_t__ pps; int /*<<< orphan*/  n_pins; int /*<<< orphan*/  n_per_out; int /*<<< orphan*/  n_ext_ts; scalar_t__ n_alarm; int /*<<< orphan*/  name; int /*<<< orphan*/  owner; } ;
struct dp83640_clock {TYPE_1__ caps; int /*<<< orphan*/  phylist; int /*<<< orphan*/  clock_lock; int /*<<< orphan*/  extreg_lock; struct mii_bus* bus; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP83640_N_PINS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  N_EXT_TS ; 
 int /*<<< orphan*/  N_PER_OUT ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ptp_dp83640_adjfine ; 
 int /*<<< orphan*/  ptp_dp83640_adjtime ; 
 int /*<<< orphan*/  ptp_dp83640_enable ; 
 int /*<<< orphan*/  ptp_dp83640_gettime ; 
 int /*<<< orphan*/  ptp_dp83640_settime ; 
 int /*<<< orphan*/  ptp_dp83640_verify ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct dp83640_clock *clock, struct mii_bus *bus)
{
	FUNC0(&clock->list);
	clock->bus = bus;
	FUNC3(&clock->extreg_lock);
	FUNC3(&clock->clock_lock);
	FUNC0(&clock->phylist);
	clock->caps.owner = THIS_MODULE;
	FUNC4(clock->caps.name, "dp83640 timer");
	clock->caps.max_adj	= 1953124;
	clock->caps.n_alarm	= 0;
	clock->caps.n_ext_ts	= N_EXT_TS;
	clock->caps.n_per_out	= N_PER_OUT;
	clock->caps.n_pins	= DP83640_N_PINS;
	clock->caps.pps		= 0;
	clock->caps.adjfine	= ptp_dp83640_adjfine;
	clock->caps.adjtime	= ptp_dp83640_adjtime;
	clock->caps.gettime64	= ptp_dp83640_gettime;
	clock->caps.settime64	= ptp_dp83640_settime;
	clock->caps.enable	= ptp_dp83640_enable;
	clock->caps.verify	= ptp_dp83640_verify;
	/*
	 * Convert the module param defaults into a dynamic pin configuration.
	 */
	FUNC1(clock->caps.pin_config);
	/*
	 * Get a reference to this bus instance.
	 */
	FUNC2(&bus->dev);
}