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
struct ipack {int plength; int found; } ;

/* Variables and functions */
 int MMAX_PLENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct ipack*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipack*) ; 

void FUNC2(struct ipack *p)
{
	if (p->plength != MMAX_PLENGTH - 6 || p->found <= 6)
		return;
	p->plength = p->found - 6;
	p->found = 0;
	FUNC1(p);
	FUNC0(p);
}