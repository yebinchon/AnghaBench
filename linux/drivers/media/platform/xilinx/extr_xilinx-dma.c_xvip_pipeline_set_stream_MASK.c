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
struct xvip_pipeline {int stream_count; int num_dmas; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct xvip_pipeline*,int) ; 

__attribute__((used)) static int FUNC3(struct xvip_pipeline *pipe, bool on)
{
	int ret = 0;

	FUNC0(&pipe->lock);

	if (on) {
		if (pipe->stream_count == pipe->num_dmas - 1) {
			ret = FUNC2(pipe, true);
			if (ret < 0)
				goto done;
		}
		pipe->stream_count++;
	} else {
		if (--pipe->stream_count == 0)
			FUNC2(pipe, false);
	}

done:
	FUNC1(&pipe->lock);
	return ret;
}