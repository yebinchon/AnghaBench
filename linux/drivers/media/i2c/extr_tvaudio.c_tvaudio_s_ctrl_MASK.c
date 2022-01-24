#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int /*<<< orphan*/  val; } ;
struct CHIPSTATE {size_t input; TYPE_2__* balance; TYPE_1__* volume; int /*<<< orphan*/  muted; struct CHIPDESC* desc; } ;
struct CHIPDESC {int /*<<< orphan*/  (* treblefunc ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  treblereg; int /*<<< orphan*/  (* bassfunc ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  bassreg; int /*<<< orphan*/  (* volfunc ) (unsigned int) ;int /*<<< orphan*/  rightreg; int /*<<< orphan*/  leftreg; int /*<<< orphan*/  inputmask; int /*<<< orphan*/ * inputmap; int /*<<< orphan*/  inputreg; int /*<<< orphan*/  inputmute; } ;
struct TYPE_4__ {unsigned int val; } ;
struct TYPE_3__ {unsigned int val; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_AUDIO_BASS 131 
#define  V4L2_CID_AUDIO_MUTE 130 
#define  V4L2_CID_AUDIO_TREBLE 129 
#define  V4L2_CID_AUDIO_VOLUME 128 
 int /*<<< orphan*/  FUNC0 (struct CHIPSTATE*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct CHIPSTATE*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct v4l2_subdev* FUNC7 (struct v4l2_ctrl*) ; 
 struct CHIPSTATE* FUNC8 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC9(struct v4l2_ctrl *ctrl)
{
	struct v4l2_subdev *sd = FUNC7(ctrl);
	struct CHIPSTATE *chip = FUNC8(sd);
	struct CHIPDESC *desc = chip->desc;

	switch (ctrl->id) {
	case V4L2_CID_AUDIO_MUTE:
		chip->muted = ctrl->val;
		if (chip->muted)
			FUNC1(chip,desc->inputreg,desc->inputmute,desc->inputmask);
		else
			FUNC1(chip,desc->inputreg,
					desc->inputmap[chip->input],desc->inputmask);
		return 0;
	case V4L2_CID_AUDIO_VOLUME: {
		u32 volume, balance;
		u32 left, right;

		volume = chip->volume->val;
		balance = chip->balance->val;
		left = (FUNC2(65536U - balance, 32768U) * volume) / 32768U;
		right = (FUNC2(balance, 32768U) * volume) / 32768U;

		FUNC0(chip, desc->leftreg, desc->volfunc(left));
		FUNC0(chip, desc->rightreg, desc->volfunc(right));
		return 0;
	}
	case V4L2_CID_AUDIO_BASS:
		FUNC0(chip, desc->bassreg, desc->bassfunc(ctrl->val));
		return 0;
	case V4L2_CID_AUDIO_TREBLE:
		FUNC0(chip, desc->treblereg, desc->treblefunc(ctrl->val));
		return 0;
	}
	return -EINVAL;
}