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
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct v4l2_subdev {int dummy; } ;
struct mt9v011 {int xtal; } ;

/* Variables and functions */
 int /*<<< orphan*/  R03_MT9V011_HEIGHT ; 
 int /*<<< orphan*/  R04_MT9V011_WIDTH ; 
 int /*<<< orphan*/  R05_MT9V011_HBLANK ; 
 int /*<<< orphan*/  R06_MT9V011_VBLANK ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 
 unsigned int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 struct mt9v011* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static u16 FUNC3(struct v4l2_subdev *sd, u32 numerator, u32 denominator)
{
	struct mt9v011 *core = FUNC2(sd);
	unsigned height, width, hblank, vblank;
	unsigned row_time, line_time;
	u64 t_time, speed;

	/* Avoid bogus calculus */
	if (!numerator || !denominator)
		return 0;

	height = FUNC1(sd, R03_MT9V011_HEIGHT);
	width = FUNC1(sd, R04_MT9V011_WIDTH);
	hblank = FUNC1(sd, R05_MT9V011_HBLANK);
	vblank = FUNC1(sd, R06_MT9V011_VBLANK);

	row_time = width + 113 + hblank;
	line_time = height + vblank + 1;

	t_time = core->xtal * ((u64)numerator);
	/* round to the closest value */
	t_time += denominator / 2;
	FUNC0(t_time, denominator);

	speed = t_time;
	FUNC0(speed, row_time * line_time);

	/* Avoid having a negative value for speed */
	if (speed < 2)
		speed = 0;
	else
		speed -= 2;

	/* Avoid speed overflow */
	if (speed > 15)
		return 15;

	return (u16)speed;
}