#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wkr ;
typedef  scalar_t__ u16 ;
struct airo_info {char defindex; } ;
struct TYPE_4__ {char* mac; void* kindex; void* len; } ;
typedef  TYPE_1__ WepKeyRid ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct airo_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct airo_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct airo_info*,TYPE_1__*,int,int) ; 

__attribute__((used)) static int FUNC5(struct airo_info *ai, u16 index, int perm, int lock)
{
	WepKeyRid wkr;
	int rc;

	FUNC3(&wkr, 0, sizeof(wkr));
	wkr.len = FUNC0(sizeof(wkr));
	wkr.kindex = FUNC0(0xffff);
	wkr.mac[0] = (char)index;

	if (perm) {
		ai->defindex = (char)index;
		FUNC1(ai, lock);
	}

	rc = FUNC4(ai, &wkr, perm, lock);

	if (perm)
		FUNC2(ai, lock);
	return rc;
}