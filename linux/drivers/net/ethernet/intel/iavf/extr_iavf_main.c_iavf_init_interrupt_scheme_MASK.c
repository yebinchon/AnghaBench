#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iavf_adapter {int num_active_queues; TYPE_2__* pdev; scalar_t__ num_tc; TYPE_1__* vf_res; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int vf_cap_flags; } ;

/* Variables and functions */
 int VIRTCHNL_VF_OFFLOAD_ADQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int FUNC2 (struct iavf_adapter*) ; 
 int FUNC3 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct iavf_adapter*) ; 
 int FUNC6 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(struct iavf_adapter *adapter)
{
	int err;

	err = FUNC3(adapter);
	if (err) {
		FUNC0(&adapter->pdev->dev,
			"Unable to allocate memory for queues\n");
		goto err_alloc_queues;
	}

	FUNC7();
	err = FUNC6(adapter);
	FUNC8();
	if (err) {
		FUNC0(&adapter->pdev->dev,
			"Unable to setup interrupt capabilities\n");
		goto err_set_interrupt;
	}

	err = FUNC2(adapter);
	if (err) {
		FUNC0(&adapter->pdev->dev,
			"Unable to allocate memory for queue vectors\n");
		goto err_alloc_q_vectors;
	}

	/* If we've made it so far while ADq flag being ON, then we haven't
	 * bailed out anywhere in middle. And ADq isn't just enabled but actual
	 * resources have been allocated in the reset path.
	 * Now we can truly claim that ADq is enabled.
	 */
	if ((adapter->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_ADQ) &&
	    adapter->num_tc)
		FUNC1(&adapter->pdev->dev, "ADq Enabled, %u TCs created",
			 adapter->num_tc);

	FUNC1(&adapter->pdev->dev, "Multiqueue %s: Queue pair count = %u",
		 (adapter->num_active_queues > 1) ? "Enabled" : "Disabled",
		 adapter->num_active_queues);

	return 0;
err_alloc_q_vectors:
	FUNC5(adapter);
err_set_interrupt:
	FUNC4(adapter);
err_alloc_queues:
	return err;
}