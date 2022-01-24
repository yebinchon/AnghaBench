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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct max2175 {int /*<<< orphan*/  freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX2175_BUFFER_PLUS_PRESET_TUNE ; 
 int FUNC0 (struct max2175*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct max2175*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct max2175*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct max2175 *ctx, u64 freq, u32 hsls)
{
	int ret;

	ret = FUNC1(ctx, freq, hsls);
	if (ret)
		return ret;

	ret = FUNC0(ctx, MAX2175_BUFFER_PLUS_PRESET_TUNE);
	if (ret)
		return ret;

	FUNC2(ctx, "tune_rf_freq: old %u new %llu\n", ctx->freq, freq);
	ctx->freq = freq;

	return ret;
}