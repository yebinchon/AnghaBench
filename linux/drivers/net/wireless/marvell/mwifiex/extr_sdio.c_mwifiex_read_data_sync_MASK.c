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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct sdio_mmc_card {int /*<<< orphan*/  func; } ;
struct mwifiex_adapter {struct sdio_mmc_card* card; } ;

/* Variables and functions */
 scalar_t__ BLOCK_MODE ; 
 scalar_t__ BYTE_MODE ; 
 int MWIFIEX_SDIO_BLOCK_SIZE ; 
 int MWIFIEX_SDIO_BYTE_MODE_MASK ; 
 int MWIFIEX_SDIO_IO_PORT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mwifiex_adapter *adapter, u8 *buffer,
				  u32 len, u32 port, u8 claim)
{
	struct sdio_mmc_card *card = adapter->card;
	int ret;
	u8 blk_mode = (port & MWIFIEX_SDIO_BYTE_MODE_MASK) ? BYTE_MODE
		       : BLOCK_MODE;
	u32 blk_size = (blk_mode == BLOCK_MODE) ? MWIFIEX_SDIO_BLOCK_SIZE : 1;
	u32 blk_cnt = (blk_mode == BLOCK_MODE) ? (len / MWIFIEX_SDIO_BLOCK_SIZE)
			: len;
	u32 ioport = (port & MWIFIEX_SDIO_IO_PORT_MASK);

	if (claim)
		FUNC0(card->func);

	ret = FUNC1(card->func, buffer, ioport, blk_cnt * blk_size);

	if (claim)
		FUNC2(card->func);

	return ret;
}