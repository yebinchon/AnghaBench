#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sdio_mmc_card {int /*<<< orphan*/  fw_done; int /*<<< orphan*/  work; int /*<<< orphan*/  can_ext_scan; int /*<<< orphan*/  can_auto_tdls; int /*<<< orphan*/  fw_dump_enh; int /*<<< orphan*/  can_dump_fw; int /*<<< orphan*/  mp_rx_agg_buf_size; int /*<<< orphan*/  mp_tx_agg_buf_size; int /*<<< orphan*/  tx_buf_size; int /*<<< orphan*/  has_control_mask; int /*<<< orphan*/  supports_sdio_new_mode; int /*<<< orphan*/  mp_agg_pkt_limit; int /*<<< orphan*/  max_ports; int /*<<< orphan*/  reg; int /*<<< orphan*/  firmware; struct sdio_func* func; } ;
struct TYPE_7__ {scalar_t__ of_node; } ;
struct sdio_func {TYPE_2__ dev; TYPE_1__* card; int /*<<< orphan*/  num; int /*<<< orphan*/  class; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; } ;
struct sdio_device_id {scalar_t__ driver_data; } ;
struct mwifiex_sdio_device {int /*<<< orphan*/  can_ext_scan; int /*<<< orphan*/  can_auto_tdls; int /*<<< orphan*/  fw_dump_enh; int /*<<< orphan*/  can_dump_fw; int /*<<< orphan*/  mp_rx_agg_buf_size; int /*<<< orphan*/  mp_tx_agg_buf_size; int /*<<< orphan*/  tx_buf_size; int /*<<< orphan*/  has_control_mask; int /*<<< orphan*/  supports_sdio_new_mode; int /*<<< orphan*/  mp_agg_pkt_limit; int /*<<< orphan*/  max_ports; int /*<<< orphan*/  reg; int /*<<< orphan*/  firmware; } ;
struct TYPE_6__ {int /*<<< orphan*/  quirks; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMC_QUIRK_BLKSZ_FOR_BYTE_MODE ; 
 int /*<<< orphan*/  MWIFIEX_SDIO ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 struct sdio_mmc_card* FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sdio_mmc_card*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  mwifiex_sdio_work ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdio_func*) ; 
 int FUNC9 (struct sdio_func*) ; 
 int /*<<< orphan*/  sdio_ops ; 
 int /*<<< orphan*/  FUNC10 (struct sdio_func*) ; 

__attribute__((used)) static int
FUNC11(struct sdio_func *func, const struct sdio_device_id *id)
{
	int ret;
	struct sdio_mmc_card *card = NULL;

	FUNC6("info: vendor=0x%4.04X device=0x%4.04X class=%d function=%d\n",
		 func->vendor, func->device, func->class, func->num);

	card = FUNC2(&func->dev, sizeof(*card), GFP_KERNEL);
	if (!card)
		return -ENOMEM;

	FUNC3(&card->fw_done);

	card->func = func;

	func->card->quirks |= MMC_QUIRK_BLKSZ_FOR_BYTE_MODE;

	if (id->driver_data) {
		struct mwifiex_sdio_device *data = (void *)id->driver_data;

		card->firmware = data->firmware;
		card->reg = data->reg;
		card->max_ports = data->max_ports;
		card->mp_agg_pkt_limit = data->mp_agg_pkt_limit;
		card->supports_sdio_new_mode = data->supports_sdio_new_mode;
		card->has_control_mask = data->has_control_mask;
		card->tx_buf_size = data->tx_buf_size;
		card->mp_tx_agg_buf_size = data->mp_tx_agg_buf_size;
		card->mp_rx_agg_buf_size = data->mp_rx_agg_buf_size;
		card->can_dump_fw = data->can_dump_fw;
		card->fw_dump_enh = data->fw_dump_enh;
		card->can_auto_tdls = data->can_auto_tdls;
		card->can_ext_scan = data->can_ext_scan;
		FUNC0(&card->work, mwifiex_sdio_work);
	}

	FUNC7(func);
	ret = FUNC9(func);
	FUNC10(func);

	if (ret) {
		FUNC1(&func->dev, "failed to enable function\n");
		return ret;
	}

	/* device tree node parsing and platform specific configuration*/
	if (func->dev.of_node) {
		ret = FUNC5(&func->dev);
		if (ret)
			goto err_disable;
	}

	ret = FUNC4(card, &card->fw_done, &sdio_ops,
			       MWIFIEX_SDIO, &func->dev);
	if (ret) {
		FUNC1(&func->dev, "add card failed\n");
		goto err_disable;
	}

	return 0;

err_disable:
	FUNC7(func);
	FUNC8(func);
	FUNC10(func);

	return ret;
}