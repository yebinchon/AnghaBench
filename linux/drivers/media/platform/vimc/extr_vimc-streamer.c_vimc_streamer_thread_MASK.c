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
typedef  int /*<<< orphan*/  u8 ;
struct vimc_stream {int pipe_size; TYPE_1__** ved_pipeline; } ;
struct TYPE_2__ {int /*<<< orphan*/ * (* process_frame ) (TYPE_1__*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(void *data)
{
	struct vimc_stream *stream = data;
	u8 *frame = NULL;
	int i;

	FUNC4();

	for (;;) {
		FUNC6();
		if (FUNC1())
			break;

		for (i = stream->pipe_size - 1; i >= 0; i--) {
			frame = stream->ved_pipeline[i]->process_frame(
					stream->ved_pipeline[i], frame);
			if (!frame || FUNC0(frame))
				break;
		}
		//wait for 60hz
		FUNC3(TASK_UNINTERRUPTIBLE);
		FUNC2(HZ / 60);
	}

	return 0;
}