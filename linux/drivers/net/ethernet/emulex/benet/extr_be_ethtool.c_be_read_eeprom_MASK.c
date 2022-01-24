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
typedef  int /*<<< orphan*/  uint8_t ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int magic; int /*<<< orphan*/  len; scalar_t__ offset; } ;
struct be_dma_mem {int size; int /*<<< orphan*/  dma; struct be_cmd_resp_seeprom_read* va; } ;
struct be_cmd_resp_seeprom_read {scalar_t__ seeprom_data; } ;
struct be_cmd_req_seeprom_read {int dummy; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BE_VENDOR_ID ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LANCER_VPD_PF_FILE ; 
 int /*<<< orphan*/  LANCER_VPD_VF_FILE ; 
 int FUNC0 (struct be_adapter*,struct be_dma_mem*) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct be_adapter*) ; 
 struct be_cmd_resp_seeprom_read* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,struct be_cmd_resp_seeprom_read*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct be_adapter*) ; 
 int FUNC6 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct be_dma_mem*,int /*<<< orphan*/ ,int) ; 
 struct be_adapter* FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *netdev,
			  struct ethtool_eeprom *eeprom, uint8_t *data)
{
	struct be_adapter *adapter = FUNC9(netdev);
	struct be_dma_mem eeprom_cmd;
	struct be_cmd_resp_seeprom_read *resp;
	int status;

	if (!eeprom->len)
		return -EINVAL;

	if (FUNC5(adapter)) {
		if (FUNC2(adapter))
			return FUNC6(adapter, LANCER_VPD_PF_FILE,
						    eeprom->len, data);
		else
			return FUNC6(adapter, LANCER_VPD_VF_FILE,
						    eeprom->len, data);
	}

	eeprom->magic = BE_VENDOR_ID | (adapter->pdev->device<<16);

	FUNC8(&eeprom_cmd, 0, sizeof(struct be_dma_mem));
	eeprom_cmd.size = sizeof(struct be_cmd_req_seeprom_read);
	eeprom_cmd.va = FUNC3(&adapter->pdev->dev,
					   eeprom_cmd.size, &eeprom_cmd.dma,
					   GFP_KERNEL);

	if (!eeprom_cmd.va)
		return -ENOMEM;

	status = FUNC0(adapter, &eeprom_cmd);

	if (!status) {
		resp = eeprom_cmd.va;
		FUNC7(data, resp->seeprom_data + eeprom->offset, eeprom->len);
	}
	FUNC4(&adapter->pdev->dev, eeprom_cmd.size, eeprom_cmd.va,
			  eeprom_cmd.dma);

	return FUNC1(status);
}