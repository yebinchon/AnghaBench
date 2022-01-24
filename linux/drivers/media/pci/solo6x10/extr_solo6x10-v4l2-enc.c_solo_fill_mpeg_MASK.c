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
typedef  int /*<<< orphan*/  vop_header ;
struct vb2_v4l2_buffer {int flags; } ;
struct vb2_buffer {int dummy; } ;
struct solo_enc_dev {int vop_len; struct solo_dev* solo_dev; } ;
struct solo_dev {int dummy; } ;
struct sg_table {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_ALIGN ; 
 int EIO ; 
 int FUNC1 (struct solo_dev*) ; 
 int FUNC2 (struct solo_dev*) ; 
 int V4L2_BUF_FLAG_BFRAME ; 
 int V4L2_BUF_FLAG_KEYFRAME ; 
 int V4L2_BUF_FLAG_PFRAME ; 
 int FUNC3 (struct solo_enc_dev*,int,struct sg_table*,int,int,int,int) ; 
 struct vb2_v4l2_buffer* FUNC4 (struct vb2_buffer*) ; 
 struct sg_table* FUNC5 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vb2_buffer*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC11(struct solo_enc_dev *solo_enc,
		struct vb2_buffer *vb, const vop_header *vh)
{
	struct vb2_v4l2_buffer *vbuf = FUNC4(vb);
	struct solo_dev *solo_dev = solo_enc->solo_dev;
	struct sg_table *sgt = FUNC5(vb, 0);
	int frame_off, frame_size;
	int skip = 0;

	if (FUNC6(vb, 0) < FUNC9(vh))
		return -EIO;

	/* If this is a key frame, add extra header */
	vbuf->flags &= ~(V4L2_BUF_FLAG_KEYFRAME | V4L2_BUF_FLAG_PFRAME |
		V4L2_BUF_FLAG_BFRAME);
	if (!FUNC10(vh)) {
		skip = solo_enc->vop_len;
		vbuf->flags |= V4L2_BUF_FLAG_KEYFRAME;
		FUNC7(vb, 0, FUNC9(vh) +
			solo_enc->vop_len);
	} else {
		vbuf->flags |= V4L2_BUF_FLAG_PFRAME;
		FUNC7(vb, 0, FUNC9(vh));
	}

	/* Now get the actual mpeg payload */
	frame_off = (FUNC8(vh) - FUNC1(solo_dev) +
		sizeof(*vh)) % FUNC2(solo_dev);
	frame_size = FUNC0(FUNC9(vh) + skip, DMA_ALIGN);

	return FUNC3(solo_enc, skip, sgt, frame_off, frame_size,
			FUNC1(solo_dev),
			FUNC2(solo_dev));
}