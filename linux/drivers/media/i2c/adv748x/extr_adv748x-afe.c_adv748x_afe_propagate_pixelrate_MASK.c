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
struct adv748x_afe {int /*<<< orphan*/ * pads; } ;

/* Variables and functions */
 size_t ADV748X_AFE_SOURCE ; 
 int ENOLINK ; 
 int FUNC0 (struct v4l2_subdev*,int) ; 
 struct v4l2_subdev* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct adv748x_afe *afe)
{
	struct v4l2_subdev *tx;

	tx = FUNC1(&afe->pads[ADV748X_AFE_SOURCE]);
	if (!tx)
		return -ENOLINK;

	/*
	 * The ADV748x ADC sampling frequency is twice the externally supplied
	 * clock whose frequency is required to be 28.63636 MHz. It oversamples
	 * with a factor of 4 resulting in a pixel rate of 14.3180180 MHz.
	 */
	return FUNC0(tx, 14318180);
}