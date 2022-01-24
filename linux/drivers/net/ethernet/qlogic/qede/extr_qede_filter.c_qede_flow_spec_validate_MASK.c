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
struct qede_dev {TYPE_1__* arfs; } ;
struct qede_arfs_tuple {scalar_t__ mode; } ;
struct flow_action {int dummy; } ;
typedef  scalar_t__ __u32 ;
struct TYPE_2__ {scalar_t__ mode; scalar_t__ filter_count; int /*<<< orphan*/  arfs_fltr_bmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*,...) ; 
 int EINVAL ; 
 scalar_t__ QEDE_RFS_MAX_FLTR ; 
 scalar_t__ FUNC1 (struct qede_dev*,struct flow_action*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct qede_dev *edev,
				   struct flow_action *flow_action,
				   struct qede_arfs_tuple *t,
				   __u32 location)
{
	if (location >= QEDE_RFS_MAX_FLTR) {
		FUNC0(edev, "Location out-of-bounds\n");
		return -EINVAL;
	}

	/* Check location isn't already in use */
	if (FUNC2(location, edev->arfs->arfs_fltr_bmap)) {
		FUNC0(edev, "Location already in use\n");
		return -EINVAL;
	}

	/* Check if the filtering-mode could support the filter */
	if (edev->arfs->filter_count &&
	    edev->arfs->mode != t->mode) {
		FUNC0(edev,
			"flow_spec would require filtering mode %08x, but %08x is configured\n",
			t->mode, edev->arfs->filter_count);
		return -EINVAL;
	}

	if (FUNC1(edev, flow_action))
		return -EINVAL;

	return 0;
}