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
typedef  scalar_t__ u32 ;
struct max2175 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct max2175*) ; 
 scalar_t__ MAX2175_LO_BELOW_DESIRED ; 
 int /*<<< orphan*/  FUNC1 (struct max2175*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct max2175*,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct max2175 *ctx, u32 lo_pos)
{
	FUNC2(ctx, "set_hsls: lo_pos %u\n", lo_pos);

	if ((lo_pos == MAX2175_LO_BELOW_DESIRED) == FUNC0(ctx))
		FUNC1(ctx, 5, 4, 1);
	else
		FUNC1(ctx, 5, 4, 0);
}