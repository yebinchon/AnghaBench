#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pvr2_stream {int dummy; } ;
struct TYPE_4__ {TYPE_1__* stream; } ;
struct pvr2_dvb_adapter {int /*<<< orphan*/  buffer_wait_data; int /*<<< orphan*/ * buffer_storage; int /*<<< orphan*/  demux; TYPE_2__ channel; } ;
struct pvr2_buffer {int dummy; } ;
struct TYPE_3__ {struct pvr2_stream* stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVR2_TRACE_DVB_FEED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC1 () ; 
 unsigned int FUNC2 (struct pvr2_buffer*) ; 
 size_t FUNC3 (struct pvr2_buffer*) ; 
 int FUNC4 (struct pvr2_buffer*) ; 
 int FUNC5 (struct pvr2_buffer*) ; 
 struct pvr2_buffer* FUNC6 (struct pvr2_stream*) ; 
 scalar_t__ FUNC7 (struct pvr2_stream*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct pvr2_dvb_adapter *adap)
{
	int ret;
	unsigned int count;
	struct pvr2_buffer *bp;
	struct pvr2_stream *stream;

	FUNC8(PVR2_TRACE_DVB_FEED, "dvb feed thread started");
	FUNC9();

	stream = adap->channel.stream->stream;

	for (;;) {
		if (FUNC1()) break;

		/* Not sure about this... */
		FUNC10();

		bp = FUNC6(stream);
		if (bp != NULL) {
			count = FUNC2(bp);
			if (count) {
				FUNC0(
					&adap->demux,
					adap->buffer_storage[
					    FUNC3(bp)],
					count);
			} else {
				ret = FUNC4(bp);
				if (ret < 0) break;
			}
			ret = FUNC5(bp);
			if (ret < 0) break;

			/* Since we know we did something to a buffer,
			   just go back and try again.  No point in
			   blocking unless we really ran out of
			   buffers to process. */
			continue;
		}


		/* Wait until more buffers become available or we're
		   told not to wait any longer. */
		ret = FUNC11(
		    adap->buffer_wait_data,
		    (FUNC7(stream) > 0) ||
		    FUNC1());
		if (ret < 0) break;
	}

	/* If we get here and ret is < 0, then an error has occurred.
	   Probably would be a good idea to communicate that to DVB core... */

	FUNC8(PVR2_TRACE_DVB_FEED, "dvb feed thread stopped");

	return 0;
}