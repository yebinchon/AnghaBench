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
struct v4l2_frequency_band {scalar_t__ tuner; size_t index; } ;
struct radio_tea5777 {int /*<<< orphan*/  has_am; } ;
struct file {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct v4l2_frequency_band*) ; 
 size_t BAND_AM ; 
 int EINVAL ; 
 struct v4l2_frequency_band* bands ; 
 struct radio_tea5777* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
					 struct v4l2_frequency_band *band)
{
	struct radio_tea5777 *tea = FUNC1(file);

	if (band->tuner != 0 || band->index >= FUNC0(bands) ||
	    (!tea->has_am && band->index == BAND_AM))
		return -EINVAL;

	*band = bands[band->index];
	return 0;
}