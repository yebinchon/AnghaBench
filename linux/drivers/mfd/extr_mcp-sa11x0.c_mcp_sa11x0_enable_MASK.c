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
struct mcp_sa11x0 {int /*<<< orphan*/  mccr0; } ;
struct mcp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mcp_sa11x0*) ; 
 int /*<<< orphan*/  MCCR0_MCE ; 
 int /*<<< orphan*/  FUNC1 (struct mcp_sa11x0*) ; 
 struct mcp_sa11x0* FUNC2 (struct mcp*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mcp *mcp)
{
	struct mcp_sa11x0 *m = FUNC2(mcp);

	FUNC3(-1, FUNC1(m));
	m->mccr0 |= MCCR0_MCE;
	FUNC4(m->mccr0, FUNC0(m));
}