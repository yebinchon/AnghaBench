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
struct TYPE_7__ {int height; int width; } ;
struct TYPE_8__ {TYPE_3__ pix; } ;
struct v4l2_format {TYPE_4__ fmt; } ;
struct TYPE_6__ {TYPE_1__* mc_head; } ;
struct pvr2_v4l2_fh {TYPE_2__ channel; } ;
struct pvr2_hdw {int dummy; } ;
struct pvr2_ctrl {int dummy; } ;
struct file {struct pvr2_v4l2_fh* private_data; } ;
struct TYPE_5__ {struct pvr2_hdw* hdw; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVR2_CID_HRES ; 
 int /*<<< orphan*/  PVR2_CID_VRES ; 
 size_t PVR_FORMAT_PIX ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_format*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pvr2_ctrl*,int*) ; 
 int FUNC2 (struct pvr2_ctrl*) ; 
 int FUNC3 (struct pvr2_ctrl*) ; 
 struct pvr2_ctrl* FUNC4 (struct pvr2_hdw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pvr_format ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv, struct v4l2_format *vf)
{
	struct pvr2_v4l2_fh *fh = file->private_data;
	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
	int lmin, lmax, ldef;
	struct pvr2_ctrl *hcp, *vcp;
	int h = vf->fmt.pix.height;
	int w = vf->fmt.pix.width;

	hcp = FUNC4(hdw, PVR2_CID_HRES);
	vcp = FUNC4(hdw, PVR2_CID_VRES);

	lmin = FUNC3(hcp);
	lmax = FUNC2(hcp);
	FUNC1(hcp, &ldef);
	if (w == -1)
		w = ldef;
	else if (w < lmin)
		w = lmin;
	else if (w > lmax)
		w = lmax;
	lmin = FUNC3(vcp);
	lmax = FUNC2(vcp);
	FUNC1(vcp, &ldef);
	if (h == -1)
		h = ldef;
	else if (h < lmin)
		h = lmin;
	else if (h > lmax)
		h = lmax;

	FUNC0(vf, &pvr_format[PVR_FORMAT_PIX],
			sizeof(struct v4l2_format));
	vf->fmt.pix.width = w;
	vf->fmt.pix.height = h;
	return 0;
}