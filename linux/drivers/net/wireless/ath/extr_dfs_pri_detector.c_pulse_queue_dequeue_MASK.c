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
struct pulse_elem {int /*<<< orphan*/  head; } ;
struct pri_detector {scalar_t__ count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pulse_elem*) ; 
 struct pulse_elem* FUNC2 (struct pri_detector*) ; 

__attribute__((used)) static bool FUNC3(struct pri_detector *pde)
{
	struct pulse_elem *p = FUNC2(pde);
	if (p != NULL) {
		FUNC0(&p->head);
		pde->count--;
		/* give it back to pool */
		FUNC1(p);
	}
	return (pde->count > 0);
}