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
struct v4l2_frequency {int frequency; } ;
struct fmdev {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct fmdev*,int) ; 
 struct fmdev* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
		const struct v4l2_frequency *freq)
{
	struct fmdev *fmdev = FUNC1(file);

	/*
	 * As V4L2_TUNER_CAP_LOW is set 1 user sends the frequency
	 * in units of 62.5 Hz.
	 */
	return FUNC0(fmdev, freq->frequency / 16);
}