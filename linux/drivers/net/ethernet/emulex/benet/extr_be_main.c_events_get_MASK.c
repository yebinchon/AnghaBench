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
struct be_eq_obj {int /*<<< orphan*/  q; } ;
struct be_eq_entry {scalar_t__ evt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct be_eq_entry* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline int FUNC3(struct be_eq_obj *eqo)
{
	struct be_eq_entry *eqe;
	int num = 0;

	do {
		eqe = FUNC1(&eqo->q);
		if (eqe->evt == 0)
			break;

		FUNC2();
		eqe->evt = 0;
		num++;
		FUNC0(&eqo->q);
	} while (true);

	return num;
}