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
struct sdio_mmc_card {TYPE_1__* reg; struct sdio_func* func; } ;
struct sdio_func {int dummy; } ;
struct mwifiex_adapter {struct sdio_mmc_card* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_int_mask_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sdio_func*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_func*) ; 

__attribute__((used)) static void FUNC4(struct mwifiex_adapter *adapter)
{
	struct sdio_mmc_card *card = adapter->card;
	struct sdio_func *func = card->func;

	FUNC1(func);
	FUNC0(func, card->reg->host_int_mask_reg, 0);
	FUNC3(func);
	FUNC2(func);
}