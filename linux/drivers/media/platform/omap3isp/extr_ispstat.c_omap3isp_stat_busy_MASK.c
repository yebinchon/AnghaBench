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
struct ispstat {int buf_processing; scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ ISPSTAT_DISABLED ; 
 int FUNC0 (struct ispstat*) ; 

int FUNC1(struct ispstat *stat)
{
	return FUNC0(stat) | stat->buf_processing |
		(stat->state != ISPSTAT_DISABLED);
}