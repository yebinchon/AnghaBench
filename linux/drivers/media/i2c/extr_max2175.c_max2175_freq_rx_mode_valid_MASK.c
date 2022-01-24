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
typedef  size_t u32 ;
struct max2175 {TYPE_1__* rx_modes; } ;
struct TYPE_2__ {int band; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 

__attribute__((used)) static bool FUNC1(struct max2175 *ctx,
					 u32 mode, u32 freq)
{
	int band = FUNC0(freq);

	return (ctx->rx_modes[mode].band == band);
}