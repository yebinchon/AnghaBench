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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_2__ {unsigned int sw_beacon_response_time; } ;
struct ath_hw {TYPE_1__ config; } ;

/* Variables and functions */
 unsigned int FUDGE ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned int,unsigned int*) ; 

__attribute__((used)) static u32 FUNC2(struct ath_hw *ah, u64 tsf,
			       unsigned int interval)
{
	unsigned int offset, divisor;

	tsf += FUNC0(FUDGE + ah->config.sw_beacon_response_time);
	divisor = FUNC0(interval);
	FUNC1(tsf, divisor, &offset);

	return (u32) tsf + divisor - offset;
}