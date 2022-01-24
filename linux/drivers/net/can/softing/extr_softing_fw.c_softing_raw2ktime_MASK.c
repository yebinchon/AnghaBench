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
typedef  int u32 ;
struct softing {int /*<<< orphan*/  ts_overflow; int /*<<< orphan*/  ts_ref; TYPE_1__* pdat; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {scalar_t__ freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

ktime_t FUNC8(struct softing *card, u32 raw)
{
	uint64_t rawl;
	ktime_t now, real_offset;
	ktime_t target;
	ktime_t tmp;

	now = FUNC3();
	real_offset = FUNC5(FUNC4(), now);

	/* find nsec from card */
	rawl = raw * 16;
	FUNC0(rawl, card->pdat->freq ?: 16);
	target = FUNC2(card->ts_ref, rawl);
	/* test for overflows */
	tmp = FUNC1(target, card->ts_overflow);
	while (FUNC7(FUNC6(tmp) > FUNC6(now))) {
		card->ts_ref = FUNC1(card->ts_ref, card->ts_overflow);
		target = tmp;
		tmp = FUNC1(target, card->ts_overflow);
	}
	return FUNC1(target, real_offset);
}