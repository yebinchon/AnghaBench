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
struct iavf_adapter {int dummy; } ;
struct TYPE_2__ {scalar_t__ chain_index; } ;
struct flow_cls_offload {int command; TYPE_1__ common; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  FLOW_CLS_DESTROY 130 
#define  FLOW_CLS_REPLACE 129 
#define  FLOW_CLS_STATS 128 
 int FUNC0 (struct iavf_adapter*,struct flow_cls_offload*) ; 
 int FUNC1 (struct iavf_adapter*,struct flow_cls_offload*) ; 

__attribute__((used)) static int FUNC2(struct iavf_adapter *adapter,
				    struct flow_cls_offload *cls_flower)
{
	if (cls_flower->common.chain_index)
		return -EOPNOTSUPP;

	switch (cls_flower->command) {
	case FLOW_CLS_REPLACE:
		return FUNC0(adapter, cls_flower);
	case FLOW_CLS_DESTROY:
		return FUNC1(adapter, cls_flower);
	case FLOW_CLS_STATS:
		return -EOPNOTSUPP;
	default:
		return -EOPNOTSUPP;
	}
}