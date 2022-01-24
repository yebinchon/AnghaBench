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
typedef  scalar_t__ v4l2_std_id ;
struct vivid_dev {scalar_t__ std_out; int /*<<< orphan*/  vb_vbi_out_q; int /*<<< orphan*/  vb_vid_out_q; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct vivid_dev* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct vivid_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct vivid_dev*) ; 

int FUNC4(struct file *file, void *priv, v4l2_std_id id)
{
	struct vivid_dev *dev = FUNC1(file);

	if (!FUNC2(dev))
		return -ENODATA;
	if (dev->std_out == id)
		return 0;
	if (FUNC0(&dev->vb_vid_out_q) || FUNC0(&dev->vb_vbi_out_q))
		return -EBUSY;
	dev->std_out = id;
	FUNC3(dev);
	return 0;
}