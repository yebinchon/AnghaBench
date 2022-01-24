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
struct firmware {int dummy; } ;
struct be_adapter {TYPE_1__* pdev; int /*<<< orphan*/  netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENETDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*) ; 
 int FUNC1 (struct be_adapter*,struct firmware const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct be_adapter*) ; 
 int FUNC5 (struct be_adapter*,struct firmware const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct firmware const*) ; 
 int FUNC8 (struct firmware const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC9(struct be_adapter *adapter, u8 *fw_file)
{
	const struct firmware *fw;
	int status;

	if (!FUNC6(adapter->netdev)) {
		FUNC2(&adapter->pdev->dev,
			"Firmware load not allowed (interface is down)\n");
		return -ENETDOWN;
	}

	status = FUNC8(&fw, fw_file, &adapter->pdev->dev);
	if (status)
		goto fw_exit;

	FUNC3(&adapter->pdev->dev, "Flashing firmware file %s\n", fw_file);

	if (FUNC4(adapter))
		status = FUNC5(adapter, fw);
	else
		status = FUNC1(adapter, fw);

	if (!status)
		FUNC0(adapter);

fw_exit:
	FUNC7(fw);
	return status;
}