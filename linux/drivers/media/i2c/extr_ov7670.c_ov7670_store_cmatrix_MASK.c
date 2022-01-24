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
 int CMATRIX_LEN ; 
 scalar_t__ REG_CMATRIX_BASE ; 
 scalar_t__ REG_CMATRIX_SIGN ; 
 int FUNC0 (struct v4l2_subdev*,scalar_t__,unsigned char*) ; 
 scalar_t__ FUNC1 (struct v4l2_subdev*,scalar_t__,unsigned char) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd,
		int matrix[CMATRIX_LEN])
{
	int i, ret;
	unsigned char signbits = 0;

	/*
	 * Weird crap seems to exist in the upper part of
	 * the sign bits register, so let's preserve it.
	 */
	ret = FUNC0(sd, REG_CMATRIX_SIGN, &signbits);
	signbits &= 0xc0;

	for (i = 0; i < CMATRIX_LEN; i++) {
		unsigned char raw;

		if (matrix[i] < 0) {
			signbits |= (1 << i);
			if (matrix[i] < -255)
				raw = 0xff;
			else
				raw = (-1 * matrix[i]) & 0xff;
		}
		else {
			if (matrix[i] > 255)
				raw = 0xff;
			else
				raw = matrix[i] & 0xff;
		}
		ret += FUNC1(sd, REG_CMATRIX_BASE + i, raw);
	}
	ret += FUNC1(sd, REG_CMATRIX_SIGN, signbits);
	return ret;
}