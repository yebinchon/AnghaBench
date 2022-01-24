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
typedef  int u32 ;
struct solo_enc_dev {int* osd_text; int* osd_buf; int ch; struct solo_dev* solo_dev; } ;
struct solo_dev {int dummy; } ;
struct font_desc {scalar_t__ data; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct solo_dev*,int) ; 
 int /*<<< orphan*/  SOLO_OSD_WRITE_SIZE ; 
 int /*<<< orphan*/  SOLO_VE_OSD_CH ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int const) ; 
 struct font_desc* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct solo_dev*,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct solo_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct solo_dev*,int /*<<< orphan*/ ,int) ; 

int FUNC8(struct solo_enc_dev *solo_enc)
{
	struct solo_dev *solo_dev = solo_enc->solo_dev;
	u8 *str = solo_enc->osd_text;
	u8 *buf = solo_enc->osd_buf;
	u32 reg;
	const struct font_desc *vga = FUNC3("VGA8x16");
	const u8 *vga_data;
	int i, j;

	if (FUNC1(!vga))
		return -ENODEV;

	reg = FUNC6(solo_dev, SOLO_VE_OSD_CH);
	if (!*str) {
		/* Disable OSD on this channel */
		reg &= ~(1 << solo_enc->ch);
		goto out;
	}

	FUNC4(buf, 0, SOLO_OSD_WRITE_SIZE);
	vga_data = (const u8 *)vga->data;

	for (i = 0; *str; i++, str++) {
		for (j = 0; j < 16; j++) {
			buf[(j << 1) | (i & 1) | ((i & ~1) << 4)] =
			    FUNC2(vga_data[(*str << 4) | j]);
		}
	}

	FUNC5(solo_dev, 1, buf,
		     FUNC0(solo_dev, solo_enc->ch),
		     SOLO_OSD_WRITE_SIZE, 0, 0);

	/* Enable OSD on this channel */
	reg |= (1 << solo_enc->ch);

out:
	FUNC7(solo_dev, SOLO_VE_OSD_CH, reg);
	return 0;
}