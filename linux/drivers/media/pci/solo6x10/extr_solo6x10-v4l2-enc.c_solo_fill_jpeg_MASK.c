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
struct vb2_v4l2_buffer {int /*<<< orphan*/  flags; } ;
struct vb2_buffer {int dummy; } ;
struct solo_enc_dev {scalar_t__ jpeg_len; struct solo_dev* solo_dev; } ;
struct solo_dev {int dummy; } ;
struct sg_table {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_ALIGN ; 
 int EIO ; 
 scalar_t__ FUNC1 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct solo_dev*) ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_KEYFRAME ; 
 int FUNC3 (struct solo_enc_dev*,scalar_t__,struct sg_table*,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC4 (struct vb2_buffer*) ; 
 struct sg_table* FUNC5 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vb2_buffer*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC10(struct solo_enc_dev *solo_enc,
			  struct vb2_buffer *vb, const vop_header *vh)
{
	struct vb2_v4l2_buffer *vbuf = FUNC4(vb);
	struct solo_dev *solo_dev = solo_enc->solo_dev;
	struct sg_table *sgt = FUNC5(vb, 0);
	int frame_size;

	vbuf->flags |= V4L2_BUF_FLAG_KEYFRAME;

	if (FUNC6(vb, 0) < FUNC9(vh) + solo_enc->jpeg_len)
		return -EIO;

	frame_size = FUNC0(FUNC9(vh) + solo_enc->jpeg_len, DMA_ALIGN);
	FUNC7(vb, 0, FUNC9(vh) + solo_enc->jpeg_len);

	return FUNC3(solo_enc, solo_enc->jpeg_len, sgt,
			     FUNC8(vh) - FUNC1(solo_dev),
			     frame_size, FUNC1(solo_dev),
			     FUNC2(solo_dev));
}