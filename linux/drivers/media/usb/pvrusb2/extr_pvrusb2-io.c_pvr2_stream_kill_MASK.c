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
struct pvr2_stream {scalar_t__ buffer_total_count; scalar_t__ buffer_target_count; int /*<<< orphan*/  mutex; } ;
struct pvr2_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pvr2_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct pvr2_stream*) ; 
 struct pvr2_buffer* FUNC4 (struct pvr2_stream*) ; 
 int /*<<< orphan*/  FUNC5 (struct pvr2_stream*) ; 

void FUNC6(struct pvr2_stream *sp)
{
	struct pvr2_buffer *bp;
	FUNC0(&sp->mutex);
	do {
		FUNC5(sp);
		while ((bp = FUNC4(sp)) != NULL) {
			FUNC2(bp);
		}
		if (sp->buffer_total_count != sp->buffer_target_count) {
			FUNC3(sp);
		}
	} while (0);
	FUNC1(&sp->mutex);
}