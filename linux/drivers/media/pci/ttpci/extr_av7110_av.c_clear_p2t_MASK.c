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
struct av7110_p2t {scalar_t__ frags; scalar_t__ pos; int /*<<< orphan*/  pes; } ;

/* Variables and functions */
 int /*<<< orphan*/  TS_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct av7110_p2t *p)
{
	FUNC0(p->pes, 0, TS_SIZE);
//	p->counter = 0;
	p->pos = 0;
	p->frags = 0;
}