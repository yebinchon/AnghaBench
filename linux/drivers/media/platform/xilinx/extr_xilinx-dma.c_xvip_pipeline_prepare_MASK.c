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
struct xvip_pipeline {scalar_t__ use_count; int /*<<< orphan*/  lock; } ;
struct xvip_dma {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xvip_pipeline*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct xvip_pipeline*,struct xvip_dma*) ; 

__attribute__((used)) static int FUNC4(struct xvip_pipeline *pipe,
				 struct xvip_dma *dma)
{
	int ret;

	FUNC1(&pipe->lock);

	/* If we're the first user validate and initialize the pipeline. */
	if (pipe->use_count == 0) {
		ret = FUNC3(pipe, dma);
		if (ret < 0) {
			FUNC0(pipe);
			goto done;
		}
	}

	pipe->use_count++;
	ret = 0;

done:
	FUNC2(&pipe->lock);
	return ret;
}