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
struct v4l2_tuner {int capability; } ;
struct v4l2_frequency {scalar_t__ type; unsigned long frequency; } ;
struct TYPE_4__ {TYPE_1__* mc_head; } ;
struct pvr2_v4l2_fh {TYPE_2__ channel; } ;
struct pvr2_hdw {int dummy; } ;
struct pvr2_ctrl {int dummy; } ;
struct file {struct pvr2_v4l2_fh* private_data; } ;
struct TYPE_3__ {struct pvr2_hdw* hdw; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVR2_CID_FREQUENCY ; 
 int /*<<< orphan*/  PVR2_CID_INPUT ; 
 int PVR2_CVAL_INPUT_RADIO ; 
 unsigned long PVR2_CVAL_INPUT_TV ; 
 int V4L2_TUNER_CAP_LOW ; 
 scalar_t__ V4L2_TUNER_RADIO ; 
 int FUNC0 (struct pvr2_ctrl*,int*) ; 
 int FUNC1 (struct pvr2_ctrl*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct pvr2_hdw*) ; 
 struct pvr2_ctrl* FUNC3 (struct pvr2_hdw*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pvr2_hdw*,struct v4l2_tuner*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv, const struct v4l2_frequency *vf)
{
	struct pvr2_v4l2_fh *fh = file->private_data;
	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
	unsigned long fv;
	struct v4l2_tuner vt;
	int cur_input;
	struct pvr2_ctrl *ctrlp;
	int ret;

	ret = FUNC4(hdw, &vt);
	if (ret != 0)
		return ret;
	ctrlp = FUNC3(hdw, PVR2_CID_INPUT);
	ret = FUNC0(ctrlp, &cur_input);
	if (ret != 0)
		return ret;
	if (vf->type == V4L2_TUNER_RADIO) {
		if (cur_input != PVR2_CVAL_INPUT_RADIO)
			FUNC1(ctrlp, PVR2_CVAL_INPUT_RADIO);
	} else {
		if (cur_input == PVR2_CVAL_INPUT_RADIO)
			FUNC1(ctrlp, PVR2_CVAL_INPUT_TV);
	}
	fv = vf->frequency;
	if (vt.capability & V4L2_TUNER_CAP_LOW)
		fv = (fv * 125) / 2;
	else
		fv = fv * 62500;
	ret = FUNC1(
			FUNC3(hdw,PVR2_CID_FREQUENCY),fv);
	FUNC2(hdw);
	return ret;
}