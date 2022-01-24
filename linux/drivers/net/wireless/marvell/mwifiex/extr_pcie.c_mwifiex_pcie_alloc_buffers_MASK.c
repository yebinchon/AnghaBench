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
struct TYPE_2__ {struct mwifiex_pcie_card_reg* reg; } ;
struct pcie_service_card {int /*<<< orphan*/ * sleep_cookie_vbase; int /*<<< orphan*/ * cmdrsp_buf; TYPE_1__ pcie; } ;
struct mwifiex_pcie_card_reg {scalar_t__ sleep_cookie; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct mwifiex_adapter*) ; 
 int FUNC2 (struct mwifiex_adapter*) ; 
 int FUNC3 (struct mwifiex_adapter*) ; 
 int FUNC4 (struct mwifiex_adapter*) ; 
 int FUNC5 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct mwifiex_adapter*) ; 

__attribute__((used)) static int FUNC10(struct mwifiex_adapter *adapter)
{
	struct pcie_service_card *card = adapter->card;
	const struct mwifiex_pcie_card_reg *reg = card->pcie.reg;
	int ret;

	card->cmdrsp_buf = NULL;
	ret = FUNC5(adapter);
	if (ret) {
		FUNC0(adapter, ERROR, "Failed to create txbd ring\n");
		goto err_cre_txbd;
	}

	ret = FUNC4(adapter);
	if (ret) {
		FUNC0(adapter, ERROR, "Failed to create rxbd ring\n");
		goto err_cre_rxbd;
	}

	ret = FUNC3(adapter);
	if (ret) {
		FUNC0(adapter, ERROR, "Failed to create evtbd ring\n");
		goto err_cre_evtbd;
	}

	ret = FUNC1(adapter);
	if (ret) {
		FUNC0(adapter, ERROR, "Failed to allocate cmdbuf buffer\n");
		goto err_alloc_cmdbuf;
	}

	if (reg->sleep_cookie) {
		ret = FUNC2(adapter);
		if (ret) {
			FUNC0(adapter, ERROR, "Failed to allocate sleep_cookie buffer\n");
			goto err_alloc_cookie;
		}
	} else {
		card->sleep_cookie_vbase = NULL;
	}

	return 0;

err_alloc_cookie:
	FUNC6(adapter);
err_alloc_cmdbuf:
	FUNC7(adapter);
err_cre_evtbd:
	FUNC8(adapter);
err_cre_rxbd:
	FUNC9(adapter);
err_cre_txbd:
	return ret;
}