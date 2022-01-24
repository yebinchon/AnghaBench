#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct skb_shared_hwtstamps {int /*<<< orphan*/  hwtstamp; } ;
struct TYPE_3__ {int cclk; } ;
struct TYPE_4__ {TYPE_1__ vpd; } ;
struct adapter {TYPE_2__ params; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct skb_shared_hwtstamps*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct adapter *adap,
				     struct skb_shared_hwtstamps *hwtstamps,
				     u64 sgetstamp)
{
	u64 ns;
	u64 tmp = (sgetstamp * 1000 * 1000 + adap->params.vpd.cclk / 2);

	ns = FUNC0(tmp, adap->params.vpd.cclk);

	FUNC1(hwtstamps, 0, sizeof(*hwtstamps));
	hwtstamps->hwtstamp = FUNC2(ns);
}