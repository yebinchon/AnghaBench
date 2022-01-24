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
struct v4l2_frequency_band {size_t index; scalar_t__ tuner; } ;
struct file {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct v4l2_frequency_band*) ; 
 int EINVAL ; 
 struct v4l2_frequency_band* bands ; 

__attribute__((used)) static int FUNC1(struct file *file, void *priv,
				struct v4l2_frequency_band *band)
{
	if (band->tuner)
		return -EINVAL;
	if (band->index >= FUNC0(bands))
		return -EINVAL;
	*band = bands[band->index];
	return 0;
}