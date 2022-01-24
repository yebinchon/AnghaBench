#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_6__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct TYPE_8__ {TYPE_3__* mc_head; } ;
struct pvr2_v4l2_fh {TYPE_4__ channel; } ;
struct pvr2_hdw {int dummy; } ;
struct pvr2_ctrl {int dummy; } ;
struct file {struct pvr2_v4l2_fh* private_data; } ;
struct TYPE_7__ {struct pvr2_hdw* hdw; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVR2_CID_HRES ; 
 int /*<<< orphan*/  PVR2_CID_VRES ; 
 int /*<<< orphan*/  FUNC0 (struct pvr2_ctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pvr2_hdw*) ; 
 struct pvr2_ctrl* FUNC2 (struct pvr2_hdw*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct file*,struct pvr2_v4l2_fh*,struct v4l2_format*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv, struct v4l2_format *vf)
{
	struct pvr2_v4l2_fh *fh = file->private_data;
	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
	struct pvr2_ctrl *hcp, *vcp;
	int ret = FUNC3(file, fh, vf);

	if (ret)
		return ret;
	hcp = FUNC2(hdw, PVR2_CID_HRES);
	vcp = FUNC2(hdw, PVR2_CID_VRES);
	FUNC0(hcp, vf->fmt.pix.width);
	FUNC0(vcp, vf->fmt.pix.height);
	FUNC1(hdw);
	return 0;
}