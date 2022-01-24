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
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct mxb {unsigned int cur_input; scalar_t__ cur_audinput; scalar_t__ cur_mute; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hps_sync; int /*<<< orphan*/  hps_source; } ;

/* Variables and functions */
#define  AUX1 131 
#define  AUX3 130 
#define  AUX3_YC 129 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int EINVAL ; 
 unsigned int MXB_INPUTS ; 
 int /*<<< orphan*/  SAA7111_FMT_CCIR ; 
 int SAA7115_COMPOSITE0 ; 
 int SAA7115_COMPOSITE1 ; 
 int SAA7115_SVIDEO1 ; 
#define  TUNER 128 
 TYPE_1__* input_port_selection ; 
 int /*<<< orphan*/  FUNC1 (struct mxb*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  s_routing ; 
 scalar_t__ FUNC3 (struct mxb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7146_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mxb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mxb*,scalar_t__) ; 
 int /*<<< orphan*/  video ; 
 scalar_t__* video_audio_connect ; 

__attribute__((used)) static int FUNC7(struct file *file, void *fh, unsigned int input)
{
	struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
	struct mxb *mxb = (struct mxb *)dev->ext_priv;
	int err = 0;
	int i = 0;

	FUNC0("VIDIOC_S_INPUT %d\n", input);

	if (input >= MXB_INPUTS)
		return -EINVAL;

	mxb->cur_input = input;

	FUNC4(dev, input_port_selection[input].hps_source,
			input_port_selection[input].hps_sync);

	/* prepare switching of tea6415c and saa7111a;
	   have a look at the 'background'-file for further information  */
	switch (input) {
	case TUNER:
		i = SAA7115_COMPOSITE0;

		err = FUNC5(mxb, video, s_routing, 3, 17, 0);

		/* connect tuner-output always to multicable */
		if (!err)
			err = FUNC5(mxb, video, s_routing, 3, 13, 0);
		break;
	case AUX3_YC:
		/* nothing to be done here. aux3_yc is
		   directly connected to the saa711a */
		i = SAA7115_SVIDEO1;
		break;
	case AUX3:
		/* nothing to be done here. aux3 is
		   directly connected to the saa711a */
		i = SAA7115_COMPOSITE1;
		break;
	case AUX1:
		i = SAA7115_COMPOSITE0;
		err = FUNC5(mxb, video, s_routing, 1, 17, 0);
		break;
	}

	if (err)
		return err;

	/* switch video in saa7111a */
	if (FUNC3(mxb, video, s_routing, i, SAA7111_FMT_CCIR, 0))
		FUNC2("VIDIOC_S_INPUT: could not address saa7111a\n");

	mxb->cur_audinput = video_audio_connect[input];
	/* switch the audio-source only if necessary */
	if (0 == mxb->cur_mute)
		FUNC6(mxb, mxb->cur_audinput);
	if (mxb->cur_audinput == 0)
		FUNC1(mxb);

	return 0;
}