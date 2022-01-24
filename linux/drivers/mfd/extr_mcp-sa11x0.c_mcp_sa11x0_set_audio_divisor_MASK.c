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
struct mcp_sa11x0 {int mccr0; } ;
struct mcp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mcp_sa11x0*) ; 
 struct mcp_sa11x0* FUNC1 (struct mcp*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct mcp *mcp, unsigned int divisor)
{
	struct mcp_sa11x0 *m = FUNC1(mcp);

	divisor /= 32;

	m->mccr0 &= ~0x0000007f;
	m->mccr0 |= divisor;
	FUNC2(m->mccr0, FUNC0(m));
}