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
struct v4l2_tuner {int audmode; int rxsubchans; } ;
struct bttv {int dummy; } ;

/* Variables and functions */
 int V4L2_TUNER_MODE_LANG1 ; 
#define  V4L2_TUNER_MODE_LANG2 129 
#define  V4L2_TUNER_MODE_STEREO 128 
 int V4L2_TUNER_SUB_LANG1 ; 
 int V4L2_TUNER_SUB_LANG2 ; 
 int V4L2_TUNER_SUB_MONO ; 
 int V4L2_TUNER_SUB_STEREO ; 
 scalar_t__ bttv_gpio ; 
 int /*<<< orphan*/  FUNC0 (struct bttv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

void FUNC3(struct bttv *btv,  struct v4l2_tuner *t, int set)
{
	unsigned int con = 0;

	if (!set) {
		/* Not much to do here */
		t->audmode = V4L2_TUNER_MODE_LANG1;
		t->rxsubchans = V4L2_TUNER_SUB_MONO |
				V4L2_TUNER_SUB_STEREO |
				V4L2_TUNER_SUB_LANG1 |
				V4L2_TUNER_SUB_LANG2;

		return;
	}

	FUNC2(0x180000, 0x180000);
	switch (t->audmode) {
	case V4L2_TUNER_MODE_LANG2:
		con = 0x080000;
		break;
	case V4L2_TUNER_MODE_STEREO:
		con = 0x180000;
		break;
	default:
		con = 0;
		break;
	}
	FUNC1(0x180000, con);
	if (bttv_gpio)
		FUNC0(btv, "terratv");
}