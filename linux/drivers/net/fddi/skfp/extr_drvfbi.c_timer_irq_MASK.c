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
struct TYPE_2__ {int /*<<< orphan*/  t_start; int /*<<< orphan*/  t_stop; } ;
struct s_smc {TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC1 (struct s_smc*) ; 

void FUNC2(struct s_smc *smc)
{
	FUNC0(smc);
	smc->hw.t_stop = smc->hw.t_start;
	FUNC1(smc) ;
}