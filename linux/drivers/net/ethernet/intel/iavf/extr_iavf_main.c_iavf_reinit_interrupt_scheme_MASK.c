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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct iavf_adapter {int /*<<< orphan*/  aq_required; TYPE_1__ vsi; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IAVF_FLAG_AQ_CONFIGURE_RSS ; 
 scalar_t__ FUNC0 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  __IAVF_VSI_DOWN ; 
 int /*<<< orphan*/  FUNC1 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct iavf_adapter*) ; 
 int FUNC5 (struct iavf_adapter*) ; 
 int FUNC6 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct iavf_adapter*) ; 
 int FUNC8 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct iavf_adapter*) ; 
 scalar_t__ FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct iavf_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	int err;

	if (FUNC10(netdev))
		FUNC4(adapter);
	FUNC1(adapter);
	FUNC9(adapter);
	FUNC2(adapter);
	FUNC3(adapter);

	err =  FUNC5(adapter);
	if (err)
		goto err;

	FUNC11(netdev);

	err = FUNC8(adapter);
	if (err)
		goto err;

	FUNC12(__IAVF_VSI_DOWN, adapter->vsi.state);

	FUNC7(adapter);

	if (FUNC0(adapter))
		adapter->aq_required |= IAVF_FLAG_AQ_CONFIGURE_RSS;
	else
		err = FUNC6(adapter);
err:
	return err;
}