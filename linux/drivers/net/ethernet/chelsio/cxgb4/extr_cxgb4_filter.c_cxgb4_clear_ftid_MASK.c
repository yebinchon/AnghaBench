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
struct tid_info {int /*<<< orphan*/  ftid_lock; int /*<<< orphan*/  ftid_bmap; } ;

/* Variables and functions */
 unsigned int CHELSIO_T6 ; 
 int PF_INET ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct tid_info *t, int fidx, int family,
			     unsigned int chip_ver)
{
	FUNC2(&t->ftid_lock);
	if (family == PF_INET) {
		FUNC0(fidx, t->ftid_bmap);
	} else {
		if (chip_ver < CHELSIO_T6)
			FUNC1(t->ftid_bmap, fidx, 2);
		else
			FUNC1(t->ftid_bmap, fidx, 1);
	}
	FUNC3(&t->ftid_lock);
}