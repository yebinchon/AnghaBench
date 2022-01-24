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
typedef  int /*<<< orphan*/  vop_header ;
typedef  size_t u8 ;
typedef  int u32 ;
struct solo_enc_dev {int dummy; } ;
struct solo_enc_buf {int motion; int /*<<< orphan*/  vh; int /*<<< orphan*/  type; } ;
struct solo_dev {size_t enc_idx; int /*<<< orphan*/  vh_buf; int /*<<< orphan*/  vh_dma; TYPE_1__* pdev; struct solo_enc_dev** v4l2_enc; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MP4_QS ; 
 int /*<<< orphan*/  SOLO_ENC_TYPE_EXT ; 
 int /*<<< orphan*/  SOLO_ENC_TYPE_STD ; 
 size_t SOLO_MAX_CHANNELS ; 
 scalar_t__ FUNC0 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 scalar_t__ FUNC4 (struct solo_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct solo_enc_dev*,struct solo_enc_buf*) ; 
 scalar_t__ FUNC6 (struct solo_enc_dev*) ; 
 int FUNC7 (struct solo_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct solo_dev *solo_dev)
{
	for (;;) {
		struct solo_enc_dev *solo_enc;
		struct solo_enc_buf enc_buf;
		u32 mpeg_current, off;
		u8 ch;
		u8 cur_q;

		/* Check if the hardware has any new ones in the queue */
		cur_q = FUNC7(solo_dev, FUNC2(11)) & 0xff;
		if (cur_q == solo_dev->enc_idx)
			break;

		mpeg_current = FUNC7(solo_dev,
					FUNC1(solo_dev->enc_idx));
		solo_dev->enc_idx = (solo_dev->enc_idx + 1) % MP4_QS;

		ch = (mpeg_current >> 24) & 0x1f;
		off = mpeg_current & 0x00ffffff;

		if (ch >= SOLO_MAX_CHANNELS) {
			ch -= SOLO_MAX_CHANNELS;
			enc_buf.type = SOLO_ENC_TYPE_EXT;
		} else
			enc_buf.type = SOLO_ENC_TYPE_STD;

		solo_enc = solo_dev->v4l2_enc[ch];
		if (solo_enc == NULL) {
			FUNC3(&solo_dev->pdev->dev,
				"Got spurious packet for channel %d\n", ch);
			continue;
		}

		/* FAIL... */
		if (FUNC4(solo_dev, solo_dev->vh_dma, off,
				     sizeof(vop_header)))
			continue;

		enc_buf.vh = solo_dev->vh_buf;

		/* Sanity check */
		if (FUNC8(enc_buf.vh) !=
			FUNC0(solo_dev) + off)
			continue;

		if (FUNC6(solo_enc))
			enc_buf.motion = 1;
		else
			enc_buf.motion = 0;

		FUNC5(solo_enc, &enc_buf);
	}
}