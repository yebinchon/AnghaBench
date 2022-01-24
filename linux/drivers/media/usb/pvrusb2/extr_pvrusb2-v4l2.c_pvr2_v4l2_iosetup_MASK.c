#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* mc_head; } ;
struct pvr2_v4l2_fh {scalar_t__ rhp; TYPE_2__* pdi; TYPE_4__ channel; } ;
struct pvr2_stream {int dummy; } ;
struct pvr2_hdw {int dummy; } ;
typedef  int /*<<< orphan*/  pvr2_stream_callback ;
struct TYPE_8__ {struct pvr2_stream* stream; } ;
struct TYPE_7__ {int /*<<< orphan*/  config; TYPE_3__* stream; } ;
struct TYPE_6__ {struct pvr2_hdw* hdw; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPERM ; 
 int FUNC0 (TYPE_4__*,TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct pvr2_hdw*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pvr2_hdw*,int) ; 
 int FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pvr2_stream*,int /*<<< orphan*/ ,struct pvr2_v4l2_fh*) ; 
 scalar_t__ pvr2_v4l2_notify ; 

__attribute__((used)) static int FUNC6(struct pvr2_v4l2_fh *fh)
{
	int ret;
	struct pvr2_stream *sp;
	struct pvr2_hdw *hdw;
	if (fh->rhp) return 0;

	if (!fh->pdi->stream) {
		/* No stream defined for this node.  This means that we're
		   not currently allowed to stream from this node. */
		return -EPERM;
	}

	/* First read() attempt.  Try to claim the stream and start
	   it... */
	if ((ret = FUNC0(&fh->channel,
					     fh->pdi->stream)) != 0) {
		/* Someone else must already have it */
		return ret;
	}

	fh->rhp = FUNC1(fh->pdi->stream);
	if (!fh->rhp) {
		FUNC0(&fh->channel,NULL);
		return -ENOMEM;
	}

	hdw = fh->channel.mc_head->hdw;
	sp = fh->pdi->stream->stream;
	FUNC5(sp,(pvr2_stream_callback)pvr2_v4l2_notify,fh);
	FUNC2(hdw,fh->pdi->config);
	if ((ret = FUNC3(hdw,!0)) < 0) return ret;
	return FUNC4(fh->rhp,!0);
}