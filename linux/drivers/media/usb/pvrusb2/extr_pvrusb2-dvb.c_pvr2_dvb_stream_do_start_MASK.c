#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pvr2_stream {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  hdw; TYPE_1__* stream; struct pvr2_context* mc_head; } ;
struct pvr2_dvb_adapter {int stream_run; int /*<<< orphan*/ * thread; TYPE_2__ channel; int /*<<< orphan*/ * buffer_storage; } ;
struct TYPE_6__ {int /*<<< orphan*/  stream; } ;
struct pvr2_context {TYPE_3__ video_stream; } ;
struct pvr2_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  pvr2_stream_callback ;
struct TYPE_4__ {struct pvr2_stream* stream; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int PVR2_DVB_BUFFER_COUNT ; 
 int /*<<< orphan*/  PVR2_DVB_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,struct pvr2_dvb_adapter*,char*) ; 
 int FUNC4 (struct pvr2_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct pvr2_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  pvr2_dvb_feed_thread ; 
 scalar_t__ pvr2_dvb_notify ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 struct pvr2_buffer* FUNC8 (struct pvr2_stream*,unsigned int) ; 
 struct pvr2_buffer* FUNC9 (struct pvr2_stream*) ; 
 int FUNC10 (struct pvr2_stream*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pvr2_dvb_adapter*) ; 

__attribute__((used)) static int FUNC12(struct pvr2_dvb_adapter *adap)
{
	struct pvr2_context *pvr = adap->channel.mc_head;
	unsigned int idx;
	int ret;
	struct pvr2_buffer *bp;
	struct pvr2_stream *stream = NULL;

	if (adap->stream_run) return -EIO;

	ret = FUNC6(&adap->channel, &pvr->video_stream);
	/* somebody else already has the stream */
	if (ret < 0) return ret;

	stream = adap->channel.stream->stream;

	for (idx = 0; idx < PVR2_DVB_BUFFER_COUNT; idx++) {
		adap->buffer_storage[idx] = FUNC2(PVR2_DVB_BUFFER_SIZE,
						    GFP_KERNEL);
		if (!(adap->buffer_storage[idx])) return -ENOMEM;
	}

	FUNC11(pvr->video_stream.stream,
				 (pvr2_stream_callback) pvr2_dvb_notify, adap);

	ret = FUNC10(stream, PVR2_DVB_BUFFER_COUNT);
	if (ret < 0) return ret;

	for (idx = 0; idx < PVR2_DVB_BUFFER_COUNT; idx++) {
		bp = FUNC8(stream, idx);
		FUNC5(bp,
				       adap->buffer_storage[idx],
				       PVR2_DVB_BUFFER_SIZE);
	}

	ret = FUNC7(adap->channel.hdw, 1);
	if (ret < 0) return ret;

	while ((bp = FUNC9(stream)) != NULL) {
		ret = FUNC4(bp);
		if (ret < 0) return ret;
	}

	adap->thread = FUNC3(pvr2_dvb_feed_thread, adap, "pvrusb2-dvb");

	if (FUNC0(adap->thread)) {
		ret = FUNC1(adap->thread);
		adap->thread = NULL;
		return ret;
	}

	adap->stream_run = !0;

	return 0;
}