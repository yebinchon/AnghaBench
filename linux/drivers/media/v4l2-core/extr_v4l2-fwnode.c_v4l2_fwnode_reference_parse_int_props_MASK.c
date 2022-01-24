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
struct v4l2_fwnode_int_props {char* name; char** props; unsigned int nprops; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int dummy; } ;
typedef  struct v4l2_async_subdev fwnode_handle ;
struct device {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENODATA ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct v4l2_async_subdev*) ; 
 int FUNC1 (struct v4l2_async_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_async_subdev*) ; 
 struct v4l2_async_subdev* FUNC4 (struct v4l2_async_notifier*,struct v4l2_async_subdev*,int) ; 
 struct v4l2_async_subdev* FUNC5 (int /*<<< orphan*/ ,char const*,unsigned int,char const* const*,unsigned int) ; 

__attribute__((used)) static int
FUNC6(struct device *dev,
				      struct v4l2_async_notifier *notifier,
				      const struct v4l2_fwnode_int_props *p)
{
	struct fwnode_handle *fwnode;
	unsigned int index;
	int ret;
	const char *prop = p->name;
	const char * const *props = p->props;
	unsigned int nprops = p->nprops;

	index = 0;
	do {
		fwnode = FUNC5(FUNC2(dev),
							    prop, index,
							    props, nprops);
		if (FUNC0(fwnode)) {
			/*
			 * Note that right now both -ENODATA and -ENOENT may
			 * signal out-of-bounds access. Return the error in
			 * cases other than that.
			 */
			if (FUNC1(fwnode) != -ENOENT &&
			    FUNC1(fwnode) != -ENODATA)
				return FUNC1(fwnode);
			break;
		}
		FUNC3(fwnode);
		index++;
	} while (1);

	for (index = 0;
	     !FUNC0((fwnode = FUNC5(FUNC2(dev),
								  prop, index,
								  props,
								  nprops)));
	     index++) {
		struct v4l2_async_subdev *asd;

		asd = FUNC4(notifier, fwnode,
							    sizeof(*asd));
		FUNC3(fwnode);
		if (FUNC0(asd)) {
			ret = FUNC1(asd);
			/* not an error if asd already exists */
			if (ret == -EEXIST)
				continue;

			return FUNC1(asd);
		}
	}

	return !fwnode || FUNC1(fwnode) == -ENOENT ? 0 : FUNC1(fwnode);
}