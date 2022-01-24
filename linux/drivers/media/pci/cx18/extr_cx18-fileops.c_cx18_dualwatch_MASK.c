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
typedef  int /*<<< orphan*/  vt ;
typedef  scalar_t__ u32 ;
struct v4l2_tuner {scalar_t__ audmode; int rxsubchans; } ;
struct TYPE_2__ {int /*<<< orphan*/  audio_mode; } ;
struct cx18 {scalar_t__ dualwatch_stereo_mode; TYPE_1__ cxhdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ V4L2_TUNER_MODE_LANG1_LANG2 ; 
 int V4L2_TUNER_SUB_LANG2 ; 
 int /*<<< orphan*/  FUNC1 (struct cx18*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_tuner*) ; 
 int /*<<< orphan*/  g_tuner ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_tuner*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tuner ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct cx18 *cx)
{
	struct v4l2_tuner vt;
	u32 new_stereo_mode;
	const u32 dual = 0x0200;

	new_stereo_mode = FUNC3(cx->cxhdl.audio_mode);
	FUNC2(&vt, 0, sizeof(vt));
	FUNC1(cx, tuner, g_tuner, &vt);
	if (vt.audmode == V4L2_TUNER_MODE_LANG1_LANG2 &&
			(vt.rxsubchans & V4L2_TUNER_SUB_LANG2))
		new_stereo_mode = dual;

	if (new_stereo_mode == cx->dualwatch_stereo_mode)
		return;

	FUNC0("dualwatch: change stereo flag from 0x%x to 0x%x.\n",
			   cx->dualwatch_stereo_mode, new_stereo_mode);
	if (FUNC4(cx->cxhdl.audio_mode, new_stereo_mode))
		FUNC0("dualwatch: changing stereo flag failed\n");
}