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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SGE_TIMESTAMP_HI_A ; 
 int /*<<< orphan*/  SGE_TIMESTAMP_LO_A ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 struct adapter* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 

u64 FUNC3(struct net_device *dev)
{
	u32 hi, lo;
	struct adapter *adap;

	adap = FUNC1(dev);
	lo = FUNC2(adap, SGE_TIMESTAMP_LO_A);
	hi = FUNC0(FUNC2(adap, SGE_TIMESTAMP_HI_A));

	return ((u64)hi << 32) | (u64)lo;
}