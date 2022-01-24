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
struct s_smc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B0_DAS ; 
 int DAS_BYP_ST ; 
 int FALSE ; 
 int TRUE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct s_smc *smc)
{
	return (FUNC1(FUNC0(B0_DAS)) & DAS_BYP_ST) ? TRUE : FALSE;
}