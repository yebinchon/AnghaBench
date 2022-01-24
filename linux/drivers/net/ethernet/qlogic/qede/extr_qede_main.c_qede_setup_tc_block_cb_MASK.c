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
struct qede_dev {int /*<<< orphan*/  ndev; } ;
struct TYPE_2__ {int /*<<< orphan*/  protocol; } ;
struct flow_cls_offload {TYPE_1__ common; } ;
typedef  enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  TC_SETUP_CLSFLOWER 128 
 int FUNC0 (struct qede_dev*,struct flow_cls_offload*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC2(enum tc_setup_type type, void *type_data,
				  void *cb_priv)
{
	struct flow_cls_offload *f;
	struct qede_dev *edev = cb_priv;

	if (!FUNC1(edev->ndev, type_data))
		return -EOPNOTSUPP;

	switch (type) {
	case TC_SETUP_CLSFLOWER:
		f = type_data;
		return FUNC0(edev, f, f->common.protocol);
	default:
		return -EOPNOTSUPP;
	}
}