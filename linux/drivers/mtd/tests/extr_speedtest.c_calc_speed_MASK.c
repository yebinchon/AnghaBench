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
typedef  int uint64_t ;
struct TYPE_2__ {int erasesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,long) ; 
 int /*<<< orphan*/  finish ; 
 scalar_t__ goodebcnt ; 
 long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* mtd ; 
 int /*<<< orphan*/  start ; 

__attribute__((used)) static long FUNC2(void)
{
	uint64_t k;
	long ms;

	ms = FUNC1(finish, start);
	if (ms == 0)
		return 0;
	k = (uint64_t)goodebcnt * (mtd->erasesize / 1024) * 1000;
	FUNC0(k, ms);
	return k;
}