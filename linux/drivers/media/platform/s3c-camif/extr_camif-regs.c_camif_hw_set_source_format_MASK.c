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
typedef  int u32 ;
struct v4l2_mbus_framefmt {int code; int width; int height; } ;
struct camif_dev {int /*<<< orphan*/  dev; struct v4l2_mbus_framefmt mbus_fmt; } ;

/* Variables and functions */
 int FUNC0 (int**) ; 
 int CISRCFMT_ORDER422_MASK ; 
 int CISRCFMT_SIZE_CAM_MASK ; 
 int /*<<< orphan*/  S3C_CAMIF_REG_CISRCFMT ; 
 int FUNC1 (struct camif_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct camif_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int** src_pixfmt_map ; 

void FUNC4(struct camif_dev *camif)
{
	struct v4l2_mbus_framefmt *mf = &camif->mbus_fmt;
	int i;
	u32 cfg;

	for (i = FUNC0(src_pixfmt_map) - 1; i >= 0; i--) {
		if (src_pixfmt_map[i][0] == mf->code)
			break;
	}
	if (i < 0) {
		i = 0;
		FUNC3(camif->dev,
			"Unsupported pixel code, falling back to %#08x\n",
			src_pixfmt_map[i][0]);
	}

	cfg = FUNC1(camif, S3C_CAMIF_REG_CISRCFMT);
	cfg &= ~(CISRCFMT_ORDER422_MASK | CISRCFMT_SIZE_CAM_MASK);
	cfg |= (mf->width << 16) | mf->height;
	cfg |= src_pixfmt_map[i][1];
	FUNC2(camif, S3C_CAMIF_REG_CISRCFMT, cfg);
}