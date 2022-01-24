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
typedef  int u8 ;
struct vb2_v4l2_buffer {scalar_t__ sequence; } ;
struct vb2_buffer {int /*<<< orphan*/  timestamp; } ;
struct solo_dev {unsigned int old_write; int /*<<< orphan*/  sequence; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 unsigned int SOLO_DISP_EXT_ADDR ; 
 unsigned int SOLO_HW_BPL ; 
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 scalar_t__ FUNC0 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned int FUNC2 (struct solo_dev*) ; 
 int FUNC3 (struct solo_dev*) ; 
 int FUNC4 (struct solo_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 unsigned int FUNC5 (struct solo_dev*) ; 
 struct vb2_v4l2_buffer* FUNC6 (struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 void* FUNC9 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct vb2_buffer*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC11(struct solo_dev *solo_dev,
			 struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC6(vb);
	dma_addr_t addr;
	unsigned int fdma_addr;
	int error = -1;
	int i;

	addr = FUNC8(vb, 0);
	if (!addr)
		goto finish_buf;

	if (FUNC0(solo_dev)) {
		void *p = FUNC9(vb, 0);
		int image_size = FUNC3(solo_dev);

		for (i = 0; i < image_size; i += 2) {
			((u8 *)p)[i] = 0x80;
			((u8 *)p)[i + 1] = 0x00;
		}
		error = 0;
	} else {
		fdma_addr = SOLO_DISP_EXT_ADDR + (solo_dev->old_write *
				(SOLO_HW_BPL * FUNC5(solo_dev)));

		error = FUNC4(solo_dev, 0, addr, fdma_addr,
				       FUNC2(solo_dev),
				       FUNC5(solo_dev), SOLO_HW_BPL);
	}

finish_buf:
	if (!error) {
		FUNC10(vb, 0,
			FUNC5(solo_dev) * FUNC2(solo_dev));
		vbuf->sequence = solo_dev->sequence++;
		vb->timestamp = FUNC1();
	}

	FUNC7(vb, error ? VB2_BUF_STATE_ERROR : VB2_BUF_STATE_DONE);
}