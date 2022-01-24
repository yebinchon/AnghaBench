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
struct vimc_stream {int /*<<< orphan*/ * kthread; } ;
struct vimc_ent_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,struct vimc_stream*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct vimc_stream*,struct vimc_ent_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct vimc_stream*) ; 
 int /*<<< orphan*/  vimc_streamer_thread ; 

int FUNC6(struct vimc_stream *stream,
			   struct vimc_ent_device *ved,
			   int enable)
{
	int ret;

	if (!stream || !ved)
		return -EINVAL;

	if (enable) {
		if (stream->kthread)
			return 0;

		ret = FUNC4(stream, ved);
		if (ret)
			return ret;

		stream->kthread = FUNC2(vimc_streamer_thread, stream,
					      "vimc-streamer thread");

		if (FUNC0(stream->kthread))
			return FUNC1(stream->kthread);

	} else {
		if (!stream->kthread)
			return 0;

		ret = FUNC3(stream->kthread);
		if (ret)
			return ret;

		stream->kthread = NULL;

		FUNC5(stream);
	}

	return 0;
}