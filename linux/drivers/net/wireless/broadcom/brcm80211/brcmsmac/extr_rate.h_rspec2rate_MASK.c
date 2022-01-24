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
typedef  int uint ;
typedef  int u32 ;

/* Variables and functions */
 int RSPEC_MIMORATE ; 
 int RSPEC_RATE_MASK ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static inline uint FUNC3(u32 rspec)
{
	if (rspec & RSPEC_MIMORATE)
		return FUNC0(rspec & RSPEC_RATE_MASK, FUNC1(rspec),
				  FUNC2(rspec));
	return rspec & RSPEC_RATE_MASK;
}