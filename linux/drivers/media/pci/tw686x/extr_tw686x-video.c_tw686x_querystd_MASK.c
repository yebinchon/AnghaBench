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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct tw686x_video_channel {size_t ch; int /*<<< orphan*/  vidq; struct tw686x_dev* dev; } ;
struct tw686x_dev {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int EBUSY ; 
 int /*<<< orphan*/ * SDT ; 
 int /*<<< orphan*/ * SDT_EN ; 
#define  TW686X_STD_NTSC_443 134 
#define  TW686X_STD_NTSC_M 133 
#define  TW686X_STD_PAL 132 
#define  TW686X_STD_PAL_60 131 
#define  TW686X_STD_PAL_CN 130 
#define  TW686X_STD_PAL_M 129 
#define  TW686X_STD_SECAM 128 
 int /*<<< orphan*/  V4L2_STD_NTSC ; 
 int /*<<< orphan*/  V4L2_STD_NTSC_443 ; 
 int /*<<< orphan*/  V4L2_STD_PAL ; 
 int /*<<< orphan*/  V4L2_STD_PAL_60 ; 
 int /*<<< orphan*/  V4L2_STD_PAL_M ; 
 int /*<<< orphan*/  V4L2_STD_PAL_Nc ; 
 int /*<<< orphan*/  V4L2_STD_SECAM ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned int FUNC3 (struct tw686x_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tw686x_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC5 (unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 struct tw686x_video_channel* FUNC7 (struct file*) ; 

__attribute__((used)) static int FUNC8(struct file *file, void *priv, v4l2_std_id *std)
{
	struct tw686x_video_channel *vc = FUNC7(file);
	struct tw686x_dev *dev = vc->dev;
	unsigned int old_std, detected_std = 0;
	unsigned long end;

	if (FUNC6(&vc->vidq))
		return -EBUSY;

	/* Enable and start standard detection */
	old_std = FUNC3(dev, SDT[vc->ch]);
	FUNC4(dev, SDT[vc->ch], 0x7);
	FUNC4(dev, SDT_EN[vc->ch], 0xff);

	end = jiffies + FUNC1(500);
	while (FUNC5(end)) {

		detected_std = FUNC3(dev, SDT[vc->ch]);
		if (!(detected_std & FUNC0(7)))
			break;
		FUNC2(100);
	}
	FUNC4(dev, SDT[vc->ch], old_std);

	/* Exit if still busy */
	if (detected_std & FUNC0(7))
		return 0;

	detected_std = (detected_std >> 4) & 0x7;
	switch (detected_std) {
	case TW686X_STD_NTSC_M:
		*std &= V4L2_STD_NTSC;
		break;
	case TW686X_STD_NTSC_443:
		*std &= V4L2_STD_NTSC_443;
		break;
	case TW686X_STD_PAL_M:
		*std &= V4L2_STD_PAL_M;
		break;
	case TW686X_STD_PAL_60:
		*std &= V4L2_STD_PAL_60;
		break;
	case TW686X_STD_PAL:
		*std &= V4L2_STD_PAL;
		break;
	case TW686X_STD_PAL_CN:
		*std &= V4L2_STD_PAL_Nc;
		break;
	case TW686X_STD_SECAM:
		*std &= V4L2_STD_SECAM;
		break;
	default:
		*std = 0;
	}
	return 0;
}