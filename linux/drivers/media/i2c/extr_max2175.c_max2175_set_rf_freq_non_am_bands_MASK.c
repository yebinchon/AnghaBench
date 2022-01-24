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
struct max2175 {int dummy; } ;
typedef  int s64 ;

/* Variables and functions */
 int FUNC0 (struct max2175*) ; 
 scalar_t__ FUNC1 (struct max2175*) ; 
 scalar_t__ FUNC2 (struct max2175*) ; 
 scalar_t__ MAX2175_LO_ABOVE_DESIRED ; 
 int FUNC3 (struct max2175*,int) ; 
 int FUNC4 (struct max2175*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct max2175*,char*) ; 

__attribute__((used)) static int FUNC6(struct max2175 *ctx, u64 freq,
					    u32 lo_pos)
{
	s64 adj_freq, low_if_freq;
	int ret;

	FUNC5(ctx, "rf_freq: non AM bands\n");

	if (FUNC2(ctx))
		low_if_freq = 128000;
	else if (FUNC1(ctx))
		low_if_freq = 228000;
	else
		return FUNC3(ctx, freq);

	if (FUNC0(ctx) == (lo_pos == MAX2175_LO_ABOVE_DESIRED))
		adj_freq = freq + low_if_freq;
	else
		adj_freq = freq - low_if_freq;

	ret = FUNC3(ctx, adj_freq);
	if (ret)
		return ret;

	return FUNC4(ctx, -low_if_freq);
}