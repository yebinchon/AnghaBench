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
struct net_device {int dummy; } ;
struct iavf_adapter {TYPE_2__* msix_entries; int /*<<< orphan*/  misc_vector_name; TYPE_1__* pdev; struct net_device* netdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  vector; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  iavf_msix_aq ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,char*) ; 

__attribute__((used)) static int FUNC5(struct iavf_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	int err;

	FUNC4(adapter->misc_vector_name,
		 sizeof(adapter->misc_vector_name) - 1, "iavf-%s:mbx",
		 FUNC1(&adapter->pdev->dev));
	err = FUNC3(adapter->msix_entries[0].vector,
			  &iavf_msix_aq, 0,
			  adapter->misc_vector_name, netdev);
	if (err) {
		FUNC0(&adapter->pdev->dev,
			"request_irq for %s failed: %d\n",
			adapter->misc_vector_name, err);
		FUNC2(adapter->msix_entries[0].vector, netdev);
	}
	return err;
}