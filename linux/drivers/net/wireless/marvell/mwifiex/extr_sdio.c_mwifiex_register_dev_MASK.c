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
struct sdio_mmc_card {scalar_t__ fw_dump_enh; int /*<<< orphan*/  firmware; struct sdio_func* func; int /*<<< orphan*/  tx_buf_size; struct mwifiex_adapter* adapter; } ;
struct sdio_func {int dummy; } ;
struct mwifiex_adapter {int num_mem_types; int /*<<< orphan*/  mem_type_mapping_tbl; int /*<<< orphan*/  fw_name; int /*<<< orphan*/  tx_buf_size; struct sdio_mmc_card* card; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  MWIFIEX_SDIO_BLOCK_SIZE ; 
 int /*<<< orphan*/  generic_mem_type_map ; 
 int /*<<< orphan*/  mem_type_mapping_tbl ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_func*) ; 
 int FUNC4 (struct sdio_func*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct mwifiex_adapter *adapter)
{
	int ret;
	struct sdio_mmc_card *card = adapter->card;
	struct sdio_func *func = card->func;

	/* save adapter pointer in card */
	card->adapter = adapter;
	adapter->tx_buf_size = card->tx_buf_size;

	FUNC2(func);

	/* Set block size */
	ret = FUNC4(card->func, MWIFIEX_SDIO_BLOCK_SIZE);
	FUNC3(func);
	if (ret) {
		FUNC1(adapter, ERROR,
			    "cannot set SDIO block size\n");
		return ret;
	}

	FUNC5(adapter->fw_name, card->firmware);
	if (card->fw_dump_enh) {
		adapter->mem_type_mapping_tbl = generic_mem_type_map;
		adapter->num_mem_types = 1;
	} else {
		adapter->mem_type_mapping_tbl = mem_type_mapping_tbl;
		adapter->num_mem_types = FUNC0(mem_type_mapping_tbl);
	}

	return 0;
}