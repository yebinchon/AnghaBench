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
struct net_device {int dummy; } ;
struct hdlc_proto {int /*<<< orphan*/  module; } ;
struct TYPE_2__ {struct hdlc_proto* proto; int /*<<< orphan*/ * state; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct net_device*) ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/ * FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct net_device *dev, struct hdlc_proto *proto,
			 size_t size)
{
	int err;

	err = FUNC0(dev);
	if (err)
		return err;

	if (!FUNC4(proto->module))
		return -ENOSYS;

	if (size) {
		FUNC1(dev)->state = FUNC2(size, GFP_KERNEL);
		if (FUNC1(dev)->state == NULL) {
			FUNC3(proto->module);
			return -ENOBUFS;
		}
	}
	FUNC1(dev)->proto = proto;

	return 0;
}