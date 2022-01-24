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
struct videobuf_queue {scalar_t__ reading; scalar_t__ streaming; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct videobuf_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct videobuf_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct videobuf_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct videobuf_queue*) ; 

void FUNC4(struct videobuf_queue *q)
{
	FUNC2(q);

	if (q->streaming)
		FUNC1(q);

	if (q->reading)
		FUNC0(q);

	FUNC3(q);
}