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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int,int,int) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, u32 input, u32 output, u32 config)
{
	/* TODO based on input/output/config */
	/* TODO See datasheet "Programmers guide" p. 39-40 */

	/* Only 2 channels in use for application */
	FUNC1(sd, 0x50, 0x1f, 0x20);
	/* Speaker mapping */
	FUNC0(sd, 0x51, 0x00);

	/* TODO Where should this be placed? */
	/* 16 bit audio word length */
	FUNC1(sd, 0x14, 0xf0, 0x02);

	return 0;
}