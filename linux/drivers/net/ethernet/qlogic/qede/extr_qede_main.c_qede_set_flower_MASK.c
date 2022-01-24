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
struct qede_dev {int dummy; } ;
struct flow_cls_offload {int command; int /*<<< orphan*/  cookie; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  FLOW_CLS_DESTROY 129 
#define  FLOW_CLS_REPLACE 128 
 int FUNC0 (struct qede_dev*,int /*<<< orphan*/ ,struct flow_cls_offload*) ; 
 int FUNC1 (struct qede_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct qede_dev *edev, struct flow_cls_offload *f,
		__be16 proto)
{
	switch (f->command) {
	case FLOW_CLS_REPLACE:
		return FUNC0(edev, proto, f);
	case FLOW_CLS_DESTROY:
		return FUNC1(edev, f->cookie);
	default:
		return -EOPNOTSUPP;
	}
}