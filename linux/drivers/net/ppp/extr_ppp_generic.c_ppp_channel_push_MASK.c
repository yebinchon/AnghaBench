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
struct channel {int /*<<< orphan*/  upl; TYPE_1__* ppp; } ;
struct TYPE_2__ {int /*<<< orphan*/  xmit_recursion; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct channel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct channel *pch)
{
	FUNC1(&pch->upl);
	if (pch->ppp) {
		(*FUNC3(pch->ppp->xmit_recursion))++;
		FUNC0(pch);
		(*FUNC3(pch->ppp->xmit_recursion))--;
	} else {
		FUNC0(pch);
	}
	FUNC2(&pch->upl);
}