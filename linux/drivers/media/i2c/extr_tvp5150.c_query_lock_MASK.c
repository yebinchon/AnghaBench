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
struct tvp5150 {int lock; int /*<<< orphan*/  regmap; scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  TVP5150_STATUS_REG_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct tvp5150* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd)
{
	struct tvp5150 *decoder = FUNC1(sd);
	int status;

	if (decoder->irq)
		return decoder->lock;

	FUNC0(decoder->regmap, TVP5150_STATUS_REG_1, &status);

	/* For standard detection, we need the 3 locks */
	return (status & 0x0e) == 0x0e;
}