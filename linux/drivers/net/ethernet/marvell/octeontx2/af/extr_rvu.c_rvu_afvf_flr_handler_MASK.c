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
struct rvu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct rvu*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct rvu *rvu, int vf)
{
	int reg = 0;

	/* pcifunc = 0(PF0) | (vf + 1) */
	FUNC3(rvu, vf + 1);

	if (vf >= 64) {
		reg = 1;
		vf = vf - 64;
	}

	/* Signal FLR finish and enable IRQ */
	FUNC4(rvu, FUNC2(reg), FUNC0(vf));
	FUNC4(rvu, FUNC1(reg), FUNC0(vf));
}