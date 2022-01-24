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
struct TYPE_4__ {int /*<<< orphan*/  hdw; TYPE_1__* stream; } ;
struct pvr2_dvb_adapter {scalar_t__ stream_run; int /*<<< orphan*/ ** buffer_storage; TYPE_2__ channel; int /*<<< orphan*/ * thread; } ;
struct TYPE_3__ {struct pvr2_stream* stream; } ;

/* Variables and functions */
 unsigned int PVR2_DVB_BUFFER_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pvr2_stream*) ; 
 int /*<<< orphan*/  FUNC5 (struct pvr2_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pvr2_stream*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct pvr2_dvb_adapter *adap)
{
	unsigned int idx;
	struct pvr2_stream *stream;

	if (adap->thread) {
		FUNC1(adap->thread);
		adap->thread = NULL;
	}

	if (adap->channel.stream) {
		stream = adap->channel.stream->stream;
	} else {
		stream = NULL;
	}
	if (stream) {
		FUNC3(adap->channel.hdw, 0);
		FUNC6(stream, NULL, NULL);
		FUNC4(stream);
		FUNC5(stream, 0);
		FUNC2(&adap->channel, NULL);
	}

	if (adap->stream_run) {
		for (idx = 0; idx < PVR2_DVB_BUFFER_COUNT; idx++) {
			if (!(adap->buffer_storage[idx])) continue;
			FUNC0(adap->buffer_storage[idx]);
			adap->buffer_storage[idx] = NULL;
		}
		adap->stream_run = 0;
	}
}