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
struct mt76_rate_power {int /*<<< orphan*/ * all; } ;
typedef  int s8 ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 

int FUNC1(struct mt76_rate_power *r)
{
	s8 ret = 0;
	int i;

	for (i = 0; i < sizeof(r->all); i++)
		ret = FUNC0(ret, r->all[i]);

	return ret;
}