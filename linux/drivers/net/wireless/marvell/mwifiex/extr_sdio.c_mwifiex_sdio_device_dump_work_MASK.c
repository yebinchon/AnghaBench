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
struct sdio_mmc_card {scalar_t__ fw_dump_enh; } ;
struct mwifiex_adapter {int /*<<< orphan*/  devdump_data; struct sdio_mmc_card* card; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  MWIFIEX_FW_DUMP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct mwifiex_adapter *adapter)
{
	struct sdio_mmc_card *card = adapter->card;

	adapter->devdump_data = FUNC6(MWIFIEX_FW_DUMP_SIZE);
	if (!adapter->devdump_data) {
		FUNC0(adapter, ERROR,
			    "vzalloc devdump data failure!\n");
		return;
	}

	FUNC1(adapter);
	if (card->fw_dump_enh)
		FUNC4(adapter);
	else
		FUNC3(adapter);
	FUNC2(adapter);
	FUNC5(adapter);
}