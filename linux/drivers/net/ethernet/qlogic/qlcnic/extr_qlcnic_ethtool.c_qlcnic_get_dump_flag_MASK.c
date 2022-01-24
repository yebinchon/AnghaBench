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
struct qlcnic_fw_dump {int /*<<< orphan*/  cap_mask; scalar_t__ size; scalar_t__ tmpl_hdr_size; scalar_t__ clr; int /*<<< orphan*/  tmpl_hdr; } ;
struct qlcnic_adapter {int /*<<< orphan*/  fw_version; int /*<<< orphan*/  netdev; TYPE_1__* ahw; } ;
struct net_device {int dummy; } ;
struct ethtool_dump {int /*<<< orphan*/  version; int /*<<< orphan*/  flag; scalar_t__ len; } ;
struct TYPE_2__ {struct qlcnic_fw_dump fw_dump; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  ETH_FW_DUMP_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct qlcnic_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int
FUNC3(struct net_device *netdev, struct ethtool_dump *dump)
{
	struct qlcnic_adapter *adapter = FUNC1(netdev);
	struct qlcnic_fw_dump *fw_dump = &adapter->ahw->fw_dump;

	if (!fw_dump->tmpl_hdr) {
		FUNC0(adapter->netdev, "FW Dump not supported\n");
		return -ENOTSUPP;
	}

	if (fw_dump->clr)
		dump->len = fw_dump->tmpl_hdr_size + fw_dump->size;
	else
		dump->len = 0;

	if (!FUNC2(adapter))
		dump->flag = ETH_FW_DUMP_DISABLE;
	else
		dump->flag = fw_dump->cap_mask;

	dump->version = adapter->fw_version;
	return 0;
}