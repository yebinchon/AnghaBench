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
struct sdio_mmc_card {struct mwifiex_adapter* adapter; } ;
struct sdio_func {int dummy; } ;
struct mwifiex_adapter {scalar_t__ ps_state; int /*<<< orphan*/  pps_uapsd_mode; } ;

/* Variables and functions */
 scalar_t__ PS_STATE_AWAKE ; 
 scalar_t__ PS_STATE_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct sdio_func*,struct sdio_mmc_card*,struct mwifiex_adapter*) ; 
 struct sdio_mmc_card* FUNC3 (struct sdio_func*) ; 

__attribute__((used)) static void
FUNC4(struct sdio_func *func)
{
	struct mwifiex_adapter *adapter;
	struct sdio_mmc_card *card;

	card = FUNC3(func);
	if (!card || !card->adapter) {
		FUNC2("int: func=%p card=%p adapter=%p\n",
		       func, card, card ? card->adapter : NULL);
		return;
	}
	adapter = card->adapter;

	if (!adapter->pps_uapsd_mode && adapter->ps_state == PS_STATE_SLEEP)
		adapter->ps_state = PS_STATE_AWAKE;

	FUNC0(adapter);
	FUNC1(adapter);
}