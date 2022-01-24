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
struct v4l2_enc_idx {scalar_t__ entries; int entries_cap; int /*<<< orphan*/  reserved; } ;
struct file {int dummy; } ;
struct cx18_stream {int buffers; int bufs_per_mdl; int buf_size; int /*<<< orphan*/  q_free; int /*<<< orphan*/  q_full; } ;
struct cx18_mdl {scalar_t__ readpos; scalar_t__ bytesused; } ;
struct cx18_enc_idx_entry {int dummy; } ;
struct cx18 {struct cx18_stream* streams; } ;
typedef  int s32 ;
struct TYPE_2__ {struct cx18* cx; } ;

/* Variables and functions */
 size_t CX18_ENC_STREAM_TYPE_IDX ; 
 int CX18_ENC_STREAM_TYPE_IDX_FW_MDL_MIN ; 
 int EINVAL ; 
 scalar_t__ V4L2_ENC_IDX_ENTRIES ; 
 struct cx18_mdl* FUNC0 (struct cx18_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cx18_stream*,struct cx18_mdl*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cx18_stream*,struct cx18_mdl*,struct v4l2_enc_idx*) ; 
 int /*<<< orphan*/  FUNC3 (struct cx18_stream*,struct cx18_mdl*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cx18_stream*) ; 
 int /*<<< orphan*/  FUNC5 (struct cx18_stream*) ; 
 TYPE_1__* FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct file *file, void *fh,
				struct v4l2_enc_idx *idx)
{
	struct cx18 *cx = FUNC6(fh)->cx;
	struct cx18_stream *s = &cx->streams[CX18_ENC_STREAM_TYPE_IDX];
	s32 tmp;
	struct cx18_mdl *mdl;

	if (!FUNC4(s)) /* Module options inhibited IDX stream */
		return -EINVAL;

	/* Compute the best case number of entries we can buffer */
	tmp = s->buffers -
			  s->bufs_per_mdl * CX18_ENC_STREAM_TYPE_IDX_FW_MDL_MIN;
	if (tmp <= 0)
		tmp = 1;
	tmp = tmp * s->buf_size / sizeof(struct cx18_enc_idx_entry);

	/* Fill out the header of the return structure */
	idx->entries = 0;
	idx->entries_cap = tmp;
	FUNC7(idx->reserved, 0, sizeof(idx->reserved));

	/* Pull IDX MDLs and buffers from q_full and populate the entries */
	do {
		mdl = FUNC0(s, &s->q_full);
		if (mdl == NULL) /* No more IDX data right now */
			break;

		/* Extract the Index entry data from the MDL and buffers */
		FUNC2(s, mdl, idx);
		if (mdl->readpos < mdl->bytesused) {
			/* We finished with data remaining, push the MDL back */
			FUNC3(s, mdl, &s->q_full);
			break;
		}

		/* We drained this MDL, schedule it to go to the firmware */
		FUNC1(s, mdl, &s->q_free);

	} while (idx->entries < V4L2_ENC_IDX_ENTRIES);

	/* Tell the work handler to send free IDX MDLs to the firmware */
	FUNC5(s);
	return 0;
}