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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct vivid_dev {unsigned int* query_std_last; size_t input; scalar_t__* std_signal_mode; int /*<<< orphan*/ * query_std; int /*<<< orphan*/ * std_cap; int /*<<< orphan*/  tpg; } ;
struct file {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ CURRENT_STD ; 
 int ENODATA ; 
 scalar_t__ NO_LOCK ; 
 scalar_t__ NO_SIGNAL ; 
 scalar_t__ SELECTED_STD ; 
 scalar_t__ TPG_QUAL_NOISE ; 
 int /*<<< orphan*/  V4L2_STD_UNKNOWN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct vivid_dev* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct vivid_dev*) ; 
 scalar_t__ FUNC4 (struct vivid_dev*) ; 
 int /*<<< orphan*/ * vivid_standard ; 

int FUNC5(struct file *file, void *priv, v4l2_std_id *id)
{
	struct vivid_dev *dev = FUNC2(file);
	unsigned int last = dev->query_std_last[dev->input];

	if (!FUNC3(dev))
		return -ENODATA;
	if (dev->std_signal_mode[dev->input] == NO_SIGNAL ||
	    dev->std_signal_mode[dev->input] == NO_LOCK) {
		*id = V4L2_STD_UNKNOWN;
		return 0;
	}
	if (FUNC4(dev) && FUNC1(&dev->tpg) == TPG_QUAL_NOISE) {
		*id = V4L2_STD_UNKNOWN;
	} else if (dev->std_signal_mode[dev->input] == CURRENT_STD) {
		*id = dev->std_cap[dev->input];
	} else if (dev->std_signal_mode[dev->input] == SELECTED_STD) {
		*id = dev->query_std[dev->input];
	} else {
		*id = vivid_standard[last];
		dev->query_std_last[dev->input] =
			(last + 1) % FUNC0(vivid_standard);
	}

	return 0;
}