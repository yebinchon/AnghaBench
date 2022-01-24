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
struct pvr2_stream {unsigned int buffer_target_count; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pvr2_stream*) ; 

int FUNC3(struct pvr2_stream *sp, unsigned int cnt)
{
	int ret;
	if (sp->buffer_target_count == cnt) return 0;
	FUNC0(&sp->mutex);
	do {
		sp->buffer_target_count = cnt;
		ret = FUNC2(sp);
	} while (0);
	FUNC1(&sp->mutex);
	return ret;
}