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
struct iavf_cloud_filter {int del; } ;
struct iavf_adapter {int /*<<< orphan*/  cloud_filter_list_lock; int /*<<< orphan*/  aq_required; } ;
struct flow_cls_offload {int /*<<< orphan*/  cookie; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IAVF_FLAG_AQ_DEL_CLOUD_FILTER ; 
 struct iavf_cloud_filter* FUNC0 (struct iavf_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct iavf_adapter *adapter,
				 struct flow_cls_offload *cls_flower)
{
	struct iavf_cloud_filter *filter = NULL;
	int err = 0;

	FUNC1(&adapter->cloud_filter_list_lock);
	filter = FUNC0(adapter, &cls_flower->cookie);
	if (filter) {
		filter->del = true;
		adapter->aq_required |= IAVF_FLAG_AQ_DEL_CLOUD_FILTER;
	} else {
		err = -EINVAL;
	}
	FUNC2(&adapter->cloud_filter_list_lock);

	return err;
}