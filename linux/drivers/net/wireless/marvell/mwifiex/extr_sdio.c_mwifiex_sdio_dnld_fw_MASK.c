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
struct sdio_mmc_card {int /*<<< orphan*/  func; } ;
struct mwifiex_fw_image {int dummy; } ;
struct mwifiex_adapter {struct sdio_mmc_card* card; } ;

/* Variables and functions */
 int FUNC0 (struct mwifiex_adapter*,struct mwifiex_fw_image*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mwifiex_adapter *adapter,
			struct mwifiex_fw_image *fw)
{
	struct sdio_mmc_card *card = adapter->card;
	int ret;

	FUNC1(card->func);
	ret = FUNC0(adapter, fw);
	FUNC2(card->func);

	return ret;
}