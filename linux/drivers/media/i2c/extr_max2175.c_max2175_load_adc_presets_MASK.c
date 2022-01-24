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
struct max2175 {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** adc_presets ; 
 int /*<<< orphan*/  FUNC1 (struct max2175*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct max2175 *ctx)
{
	unsigned int i, j;

	for (i = 0; i < FUNC0(*adc_presets); i++)
		for (j = 0; j < FUNC0(adc_presets[0]); j++)
			FUNC1(ctx, 146 + j + i * 55, adc_presets[i][j]);
}