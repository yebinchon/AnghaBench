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
struct adv748x_csi2 {int /*<<< orphan*/  pixel_rate; } ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 int EINVAL ; 
 struct adv748x_csi2* FUNC0 (struct v4l2_subdev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct v4l2_subdev *sd, s64 rate)
{
	struct adv748x_csi2 *tx = FUNC0(sd);

	if (!tx->pixel_rate)
		return -EINVAL;

	return FUNC1(tx->pixel_rate, rate);
}