#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct max2175 {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  val; int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* fmna1p0_map ; 
 int /*<<< orphan*/  FUNC1 (struct max2175*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct max2175 *ctx)
{
	unsigned int i;

	for (i = 0; i < FUNC0(fmna1p0_map); i++)
		FUNC1(ctx, fmna1p0_map[i].idx, fmna1p0_map[i].val);
}