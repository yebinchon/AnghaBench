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
struct budget {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct budget*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct budget*) ; 

__attribute__((used)) static void FUNC2 (struct budget *budget, int data)
{
	int i, par=1, d;

	FUNC1(2, "budget: %p\n", budget);

	for (i=7; i>=0; i--) {
		d = (data>>i)&1;
		par ^= d;
		FUNC0(budget, d);
	}

	FUNC0(budget, par);
}