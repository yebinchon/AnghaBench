#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct virtchnl_l4_spec {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  tcp_spec; } ;
struct TYPE_6__ {int /*<<< orphan*/  flow_type; TYPE_2__ mask; } ;
struct iavf_cloud_filter {int add; int /*<<< orphan*/  list; TYPE_3__ f; int /*<<< orphan*/  cookie; } ;
struct iavf_adapter {int /*<<< orphan*/  crit_section; int /*<<< orphan*/  cloud_filter_list_lock; int /*<<< orphan*/  aq_required; int /*<<< orphan*/  num_cloud_filters; int /*<<< orphan*/  cloud_filter_list; TYPE_1__* pdev; int /*<<< orphan*/  netdev; } ;
struct flow_cls_offload {int /*<<< orphan*/  cookie; int /*<<< orphan*/  classid; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IAVF_FLAG_AQ_ADD_CLOUD_FILTER ; 
 int /*<<< orphan*/  VIRTCHNL_TCP_V4_FLOW ; 
 int /*<<< orphan*/  __IAVF_IN_CRITICAL_TASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct iavf_adapter*,int,struct iavf_cloud_filter*) ; 
 int FUNC3 (struct iavf_adapter*,struct flow_cls_offload*,struct iavf_cloud_filter*) ; 
 int /*<<< orphan*/  FUNC4 (struct iavf_cloud_filter*) ; 
 struct iavf_cloud_filter* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct iavf_adapter *adapter,
				    struct flow_cls_offload *cls_flower)
{
	int tc = FUNC10(adapter->netdev, cls_flower->classid);
	struct iavf_cloud_filter *filter = NULL;
	int err = -EINVAL, count = 50;

	if (tc < 0) {
		FUNC1(&adapter->pdev->dev, "Invalid traffic class\n");
		return -EINVAL;
	}

	filter = FUNC5(sizeof(*filter), GFP_KERNEL);
	if (!filter)
		return -ENOMEM;

	while (FUNC11(__IAVF_IN_CRITICAL_TASK,
				&adapter->crit_section)) {
		if (--count == 0)
			goto err;
		FUNC12(1);
	}

	filter->cookie = cls_flower->cookie;

	/* set the mask to all zeroes to begin with */
	FUNC7(&filter->f.mask.tcp_spec, 0, sizeof(struct virtchnl_l4_spec));
	/* start out with flow type and eth type IPv4 to begin with */
	filter->f.flow_type = VIRTCHNL_TCP_V4_FLOW;
	err = FUNC3(adapter, cls_flower, filter);
	if (err < 0)
		goto err;

	err = FUNC2(adapter, tc, filter);
	if (err < 0)
		goto err;

	/* add filter to the list */
	FUNC8(&adapter->cloud_filter_list_lock);
	FUNC6(&filter->list, &adapter->cloud_filter_list);
	adapter->num_cloud_filters++;
	filter->add = true;
	adapter->aq_required |= IAVF_FLAG_AQ_ADD_CLOUD_FILTER;
	FUNC9(&adapter->cloud_filter_list_lock);
err:
	if (err)
		FUNC4(filter);

	FUNC0(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
	return err;
}