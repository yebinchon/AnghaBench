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
typedef  scalar_t__ u8 ;
struct port_info {int dummy; } ;
struct net_device {int dummy; } ;
struct ch_sched_queue {scalar_t__ class; } ;
typedef  enum sched_bind_type { ____Placeholder_sched_bind_type } sched_bind_type ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
 scalar_t__ SCHED_CLS_NONE ; 
#define  SCHED_QUEUE 128 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct port_info* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct port_info*,void*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,scalar_t__) ; 

int FUNC4(struct net_device *dev, void *arg,
			   enum sched_bind_type type)
{
	struct port_info *pi = FUNC1(dev);
	u8 class_id;

	if (!FUNC0(dev))
		return -ENOTSUPP;

	if (!arg)
		return -EINVAL;

	switch (type) {
	case SCHED_QUEUE: {
		struct ch_sched_queue *qe = (struct ch_sched_queue *)arg;

		class_id = qe->class;
		break;
	}
	default:
		return -ENOTSUPP;
	}

	if (!FUNC3(dev, class_id))
		return -EINVAL;

	if (class_id == SCHED_CLS_NONE)
		return -ENOTSUPP;

	return FUNC2(pi, arg, type, true);

}