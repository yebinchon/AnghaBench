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
struct v4l2_async_notifier {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  parse_endpoint_func ;

/* Variables and functions */
 int FUNC0 (struct device*,struct v4l2_async_notifier*,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int
FUNC1(struct device *dev,
					   struct v4l2_async_notifier *notifier,
					   size_t asd_struct_size,
					   parse_endpoint_func parse_endpoint)
{
	return FUNC0(dev, notifier,
						     asd_struct_size, 0,
						     false, parse_endpoint);
}