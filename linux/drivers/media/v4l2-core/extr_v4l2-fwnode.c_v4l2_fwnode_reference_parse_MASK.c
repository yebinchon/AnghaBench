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
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int dummy; } ;
struct fwnode_reference_args {int /*<<< orphan*/  fwnode; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENODATA ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct v4l2_async_subdev*) ; 
 int FUNC1 (struct v4l2_async_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,struct fwnode_reference_args*) ; 
 struct v4l2_async_subdev* FUNC5 (struct v4l2_async_notifier*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct device *dev,
				       struct v4l2_async_notifier *notifier,
				       const char *prop)
{
	struct fwnode_reference_args args;
	unsigned int index;
	int ret;

	for (index = 0;
	     !(ret = FUNC4(FUNC2(dev),
							prop, NULL, 0,
							index, &args));
	     index++)
		FUNC3(args.fwnode);

	if (!index)
		return -ENOENT;

	/*
	 * Note that right now both -ENODATA and -ENOENT may signal
	 * out-of-bounds access. Return the error in cases other than that.
	 */
	if (ret != -ENOENT && ret != -ENODATA)
		return ret;

	for (index = 0;
	     !FUNC4(FUNC2(dev), prop, NULL,
						 0, index, &args);
	     index++) {
		struct v4l2_async_subdev *asd;

		asd = FUNC5(notifier,
							    args.fwnode,
							    sizeof(*asd));
		FUNC3(args.fwnode);
		if (FUNC0(asd)) {
			/* not an error if asd already exists */
			if (FUNC1(asd) == -EEXIST)
				continue;

			return FUNC1(asd);
		}
	}

	return 0;
}