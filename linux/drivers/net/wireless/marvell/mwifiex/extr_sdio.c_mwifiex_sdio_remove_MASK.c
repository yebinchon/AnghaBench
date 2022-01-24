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
typedef  scalar_t__ u16 ;
struct sdio_mmc_card {struct mwifiex_adapter* adapter; int /*<<< orphan*/  fw_done; } ;
struct sdio_func {int /*<<< orphan*/  num; } ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_adapter {int /*<<< orphan*/  mfg_mode; int /*<<< orphan*/  priv_num; } ;

/* Variables and functions */
 scalar_t__ FIRMWARE_READY_SDIO ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  MWIFIEX_BSS_ROLE_ANY ; 
 int /*<<< orphan*/  MWIFIEX_FUNC_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_private*) ; 
 struct mwifiex_private* FUNC3 (struct mwifiex_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mwifiex_adapter*) ; 
 int FUNC6 (struct mwifiex_adapter*,scalar_t__*) ; 
 struct sdio_mmc_card* FUNC7 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct sdio_func *func)
{
	struct sdio_mmc_card *card;
	struct mwifiex_adapter *adapter;
	struct mwifiex_private *priv;
	int ret = 0;
	u16 firmware_stat;

	card = FUNC7(func);
	if (!card)
		return;

	FUNC8(&card->fw_done);

	adapter = card->adapter;
	if (!adapter || !adapter->priv_num)
		return;

	FUNC0(adapter, INFO, "info: SDIO func num=%d\n", func->num);

	ret = FUNC6(adapter, &firmware_stat);
	if (!ret && firmware_stat == FIRMWARE_READY_SDIO &&
	    !adapter->mfg_mode) {
		FUNC1(adapter);

		priv = FUNC3(adapter, MWIFIEX_BSS_ROLE_ANY);
		FUNC2(priv);
		FUNC4(priv, MWIFIEX_FUNC_SHUTDOWN);
	}

	FUNC5(adapter);
}