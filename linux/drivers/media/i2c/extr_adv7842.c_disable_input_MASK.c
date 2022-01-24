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
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct v4l2_subdev *sd)
{
	FUNC1(sd, 0x1a, 0xef, 0x10); /* Mute audio [REF_01, c. 2.2.2] */
	FUNC3(16); /* 512 samples with >= 32 kHz sample rate [REF_03, c. 8.29] */
	FUNC2(sd, 0x15, 0xbe);   /* Tristate all outputs from video core */
	FUNC0(sd, 0x01, 0x78); /* Disable HDMI clock terminators */
}