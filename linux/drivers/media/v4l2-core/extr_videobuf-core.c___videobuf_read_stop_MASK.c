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
struct videobuf_queue {int /*<<< orphan*/ * read_buf; int /*<<< orphan*/ ** bufs; int /*<<< orphan*/  stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int VIDEO_MAX_FRAME ; 
 int /*<<< orphan*/  FUNC1 (struct videobuf_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct videobuf_queue*) ; 

__attribute__((used)) static void FUNC4(struct videobuf_queue *q)
{
	int i;

	FUNC3(q);
	FUNC1(q);
	FUNC0(&q->stream);
	for (i = 0; i < VIDEO_MAX_FRAME; i++) {
		if (NULL == q->bufs[i])
			continue;
		FUNC2(q->bufs[i]);
		q->bufs[i] = NULL;
	}
	q->read_buf = NULL;
}