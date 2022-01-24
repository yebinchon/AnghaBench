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
typedef  int u8 ;
typedef  int u32 ;
struct net_device {int dummy; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct ethtool_flash {char* data; } ;
struct adapter {unsigned int pf; int flags; unsigned int mbox; int /*<<< orphan*/  pdev_dev; } ;

/* Variables and functions */
 int CXGB4_FULL_INIT_DONE ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  PCIE_FW_A ; 
 unsigned int FUNC0 (int) ; 
 int PCIE_FW_MASTER_M ; 
 int PCIE_FW_MASTER_VLD_F ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware const*) ; 
 int FUNC5 (struct firmware const**,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct adapter*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net_device *netdev, struct ethtool_flash *ef)
{
	int ret;
	const struct firmware *fw;
	struct adapter *adap = FUNC3(netdev);
	unsigned int mbox = PCIE_FW_MASTER_M + 1;
	u32 pcie_fw;
	unsigned int master;
	u8 master_vld = 0;

	pcie_fw = FUNC7(adap, PCIE_FW_A);
	master = FUNC0(pcie_fw);
	if (pcie_fw & PCIE_FW_MASTER_VLD_F)
		master_vld = 1;
	/* if csiostor is the master return */
	if (master_vld && (master != adap->pf)) {
		FUNC2(adap->pdev_dev,
			 "cxgb4 driver needs to be loaded as MASTER to support FW flash\n");
		return -EOPNOTSUPP;
	}

	ef->data[sizeof(ef->data) - 1] = '\0';
	ret = FUNC5(&fw, ef->data, adap->pdev_dev);
	if (ret < 0)
		return ret;

	/* If the adapter has been fully initialized then we'll go ahead and
	 * try to get the firmware's cooperation in upgrading to the new
	 * firmware image otherwise we'll try to do the entire job from the
	 * host ... and we always "force" the operation in this path.
	 */
	if (adap->flags & CXGB4_FULL_INIT_DONE)
		mbox = adap->mbox;

	ret = FUNC6(adap, mbox, fw->data, fw->size, 1);
	FUNC4(fw);
	if (!ret)
		FUNC1(adap->pdev_dev,
			 "loaded firmware %s, reload cxgb4 driver\n", ef->data);
	return ret;
}