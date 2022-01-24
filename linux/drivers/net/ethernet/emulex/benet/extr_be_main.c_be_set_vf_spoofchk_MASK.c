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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct be_vf_cfg {int spoofchk; int /*<<< orphan*/  if_handle; } ;
struct be_adapter {int num_vfs; TYPE_1__* pdev; struct be_vf_cfg* vf_cfg; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  DISABLE_MAC_SPOOFCHK ; 
 int EINVAL ; 
 int /*<<< orphan*/  ENABLE_MAC_SPOOFCHK ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int FUNC1 (struct be_adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int) ; 
 struct be_adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct be_adapter*) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev, int vf, bool enable)
{
	struct be_adapter *adapter = FUNC4(netdev);
	struct be_vf_cfg *vf_cfg = &adapter->vf_cfg[vf];
	u8 spoofchk;
	int status;

	if (!FUNC5(adapter))
		return -EPERM;

	if (vf >= adapter->num_vfs)
		return -EINVAL;

	if (FUNC0(adapter))
		return -EOPNOTSUPP;

	if (enable == vf_cfg->spoofchk)
		return 0;

	spoofchk = enable ? ENABLE_MAC_SPOOFCHK : DISABLE_MAC_SPOOFCHK;

	status = FUNC1(adapter, 0, vf + 1, vf_cfg->if_handle,
				       0, spoofchk);
	if (status) {
		FUNC3(&adapter->pdev->dev,
			"Spoofchk change on VF %d failed: %#x\n", vf, status);
		return FUNC2(status);
	}

	vf_cfg->spoofchk = enable;
	return 0;
}