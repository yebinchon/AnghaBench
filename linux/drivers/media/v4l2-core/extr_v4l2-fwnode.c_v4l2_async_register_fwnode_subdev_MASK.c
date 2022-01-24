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
struct v4l2_subdev {struct v4l2_async_notifier* subdev_notifier; struct device* dev; } ;
struct v4l2_async_notifier {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  parse_endpoint_func ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 struct fwnode_handle* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_async_notifier*) ; 
 struct v4l2_async_notifier* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_async_notifier*) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_async_notifier*) ; 
 int FUNC7 (struct device*,struct v4l2_async_notifier*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,struct v4l2_async_notifier*,size_t,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct v4l2_async_notifier*) ; 
 int FUNC10 (struct v4l2_subdev*) ; 
 int FUNC11 (struct v4l2_subdev*,struct v4l2_async_notifier*) ; 

int FUNC12(struct v4l2_subdev *sd,
				      size_t asd_struct_size,
				      unsigned int *ports,
				      unsigned int num_ports,
				      parse_endpoint_func parse_endpoint)
{
	struct v4l2_async_notifier *notifier;
	struct device *dev = sd->dev;
	struct fwnode_handle *fwnode;
	int ret;

	if (FUNC0(!dev))
		return -ENODEV;

	fwnode = FUNC1(dev);
	if (!FUNC2(fwnode))
		return -ENODEV;

	notifier = FUNC4(sizeof(*notifier), GFP_KERNEL);
	if (!notifier)
		return -ENOMEM;

	FUNC6(notifier);

	if (!ports) {
		ret = FUNC7(dev, notifier,
								 asd_struct_size,
								 parse_endpoint);
		if (ret < 0)
			goto out_cleanup;
	} else {
		unsigned int i;

		for (i = 0; i < num_ports; i++) {
			ret = FUNC8(dev, notifier, asd_struct_size, ports[i], parse_endpoint);
			if (ret < 0)
				goto out_cleanup;
		}
	}

	ret = FUNC11(sd, notifier);
	if (ret < 0)
		goto out_cleanup;

	ret = FUNC10(sd);
	if (ret < 0)
		goto out_unregister;

	sd->subdev_notifier = notifier;

	return 0;

out_unregister:
	FUNC9(notifier);
out_cleanup:
	FUNC5(notifier);
	FUNC3(notifier);

	return ret;
}