#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char* u32 ;
struct v4l2_fwnode_bus_parallel {unsigned int flags; char* bus_width; char* data_shift; } ;
struct TYPE_2__ {struct v4l2_fwnode_bus_parallel parallel; } ;
struct v4l2_fwnode_endpoint {int bus_type; TYPE_1__ bus; } ;
struct fwnode_handle {int dummy; } ;
typedef  enum v4l2_mbus_type { ____Placeholder_v4l2_mbus_type } v4l2_mbus_type ;

/* Variables and functions */
 unsigned int PARALLEL_MBUS_FLAGS ; 
#define  V4L2_MBUS_BT656 129 
 unsigned int V4L2_MBUS_DATA_ACTIVE_HIGH ; 
 unsigned int V4L2_MBUS_DATA_ACTIVE_LOW ; 
 unsigned int V4L2_MBUS_DATA_ENABLE_HIGH ; 
 unsigned int V4L2_MBUS_DATA_ENABLE_LOW ; 
 unsigned int V4L2_MBUS_FIELD_EVEN_HIGH ; 
 unsigned int V4L2_MBUS_FIELD_EVEN_LOW ; 
 unsigned int V4L2_MBUS_HSYNC_ACTIVE_HIGH ; 
 unsigned int V4L2_MBUS_HSYNC_ACTIVE_LOW ; 
 unsigned int V4L2_MBUS_MASTER ; 
#define  V4L2_MBUS_PARALLEL 128 
 unsigned int V4L2_MBUS_PCLK_SAMPLE_FALLING ; 
 unsigned int V4L2_MBUS_PCLK_SAMPLE_RISING ; 
 unsigned int V4L2_MBUS_SLAVE ; 
 unsigned int V4L2_MBUS_VIDEO_SOG_ACTIVE_HIGH ; 
 unsigned int V4L2_MBUS_VIDEO_SOG_ACTIVE_LOW ; 
 unsigned int V4L2_MBUS_VSYNC_ACTIVE_HIGH ; 
 unsigned int V4L2_MBUS_VSYNC_ACTIVE_LOW ; 
 scalar_t__ FUNC0 (struct fwnode_handle*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct fwnode_handle*,char*,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(struct fwnode_handle *fwnode,
					struct v4l2_fwnode_endpoint *vep,
					enum v4l2_mbus_type bus_type)
{
	struct v4l2_fwnode_bus_parallel *bus = &vep->bus.parallel;
	unsigned int flags = 0;
	u32 v;

	if (bus_type == V4L2_MBUS_PARALLEL || bus_type == V4L2_MBUS_BT656)
		flags = bus->flags;

	if (!FUNC1(fwnode, "hsync-active", &v)) {
		flags &= ~(V4L2_MBUS_HSYNC_ACTIVE_HIGH |
			   V4L2_MBUS_HSYNC_ACTIVE_LOW);
		flags |= v ? V4L2_MBUS_HSYNC_ACTIVE_HIGH :
			V4L2_MBUS_HSYNC_ACTIVE_LOW;
		FUNC2("hsync-active %s\n", v ? "high" : "low");
	}

	if (!FUNC1(fwnode, "vsync-active", &v)) {
		flags &= ~(V4L2_MBUS_VSYNC_ACTIVE_HIGH |
			   V4L2_MBUS_VSYNC_ACTIVE_LOW);
		flags |= v ? V4L2_MBUS_VSYNC_ACTIVE_HIGH :
			V4L2_MBUS_VSYNC_ACTIVE_LOW;
		FUNC2("vsync-active %s\n", v ? "high" : "low");
	}

	if (!FUNC1(fwnode, "field-even-active", &v)) {
		flags &= ~(V4L2_MBUS_FIELD_EVEN_HIGH |
			   V4L2_MBUS_FIELD_EVEN_LOW);
		flags |= v ? V4L2_MBUS_FIELD_EVEN_HIGH :
			V4L2_MBUS_FIELD_EVEN_LOW;
		FUNC2("field-even-active %s\n", v ? "high" : "low");
	}

	if (!FUNC1(fwnode, "pclk-sample", &v)) {
		flags &= ~(V4L2_MBUS_PCLK_SAMPLE_RISING |
			   V4L2_MBUS_PCLK_SAMPLE_FALLING);
		flags |= v ? V4L2_MBUS_PCLK_SAMPLE_RISING :
			V4L2_MBUS_PCLK_SAMPLE_FALLING;
		FUNC2("pclk-sample %s\n", v ? "high" : "low");
	}

	if (!FUNC1(fwnode, "data-active", &v)) {
		flags &= ~(V4L2_MBUS_DATA_ACTIVE_HIGH |
			   V4L2_MBUS_DATA_ACTIVE_LOW);
		flags |= v ? V4L2_MBUS_DATA_ACTIVE_HIGH :
			V4L2_MBUS_DATA_ACTIVE_LOW;
		FUNC2("data-active %s\n", v ? "high" : "low");
	}

	if (FUNC0(fwnode, "slave-mode")) {
		FUNC2("slave mode\n");
		flags &= ~V4L2_MBUS_MASTER;
		flags |= V4L2_MBUS_SLAVE;
	} else {
		flags &= ~V4L2_MBUS_SLAVE;
		flags |= V4L2_MBUS_MASTER;
	}

	if (!FUNC1(fwnode, "bus-width", &v)) {
		bus->bus_width = v;
		FUNC2("bus-width %u\n", v);
	}

	if (!FUNC1(fwnode, "data-shift", &v)) {
		bus->data_shift = v;
		FUNC2("data-shift %u\n", v);
	}

	if (!FUNC1(fwnode, "sync-on-green-active", &v)) {
		flags &= ~(V4L2_MBUS_VIDEO_SOG_ACTIVE_HIGH |
			   V4L2_MBUS_VIDEO_SOG_ACTIVE_LOW);
		flags |= v ? V4L2_MBUS_VIDEO_SOG_ACTIVE_HIGH :
			V4L2_MBUS_VIDEO_SOG_ACTIVE_LOW;
		FUNC2("sync-on-green-active %s\n", v ? "high" : "low");
	}

	if (!FUNC1(fwnode, "data-enable-active", &v)) {
		flags &= ~(V4L2_MBUS_DATA_ENABLE_HIGH |
			   V4L2_MBUS_DATA_ENABLE_LOW);
		flags |= v ? V4L2_MBUS_DATA_ENABLE_HIGH :
			V4L2_MBUS_DATA_ENABLE_LOW;
		FUNC2("data-enable-active %s\n", v ? "high" : "low");
	}

	switch (bus_type) {
	default:
		bus->flags = flags;
		if (flags & PARALLEL_MBUS_FLAGS)
			vep->bus_type = V4L2_MBUS_PARALLEL;
		else
			vep->bus_type = V4L2_MBUS_BT656;
		break;
	case V4L2_MBUS_PARALLEL:
		vep->bus_type = V4L2_MBUS_PARALLEL;
		bus->flags = flags;
		break;
	case V4L2_MBUS_BT656:
		vep->bus_type = V4L2_MBUS_BT656;
		bus->flags = flags & ~PARALLEL_MBUS_FLAGS;
		break;
	}
}