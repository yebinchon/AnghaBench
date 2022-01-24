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
struct TYPE_2__ {scalar_t__ ft_min; } ;
struct img_ir_timings {TYPE_1__ ft; int /*<<< orphan*/  s11; int /*<<< orphan*/  s10; int /*<<< orphan*/  s01; int /*<<< orphan*/  s00; int /*<<< orphan*/  ldr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct img_ir_timings *timings,
				    struct img_ir_timings *defaults)
{
	FUNC0(&timings->ldr, &defaults->ldr);
	FUNC0(&timings->s00, &defaults->s00);
	FUNC0(&timings->s01, &defaults->s01);
	FUNC0(&timings->s10, &defaults->s10);
	FUNC0(&timings->s11, &defaults->s11);
	if (!timings->ft.ft_min)
		timings->ft.ft_min = defaults->ft.ft_min;
}