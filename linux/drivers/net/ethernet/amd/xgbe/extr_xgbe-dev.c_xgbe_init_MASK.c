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
struct xgbe_desc_if {int /*<<< orphan*/  (* wrapper_rx_desc_init ) (struct xgbe_prv_data*) ;int /*<<< orphan*/  (* wrapper_tx_desc_init ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {int /*<<< orphan*/  rx_threshold; int /*<<< orphan*/  tx_threshold; int /*<<< orphan*/  rx_sf_mode; int /*<<< orphan*/  tx_sf_mode; int /*<<< orphan*/  netdev; struct xgbe_desc_if desc_if; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC15 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC16 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC17 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC19 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC20 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC21 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC22 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC23 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC25 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC27 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC28 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC29 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC31 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC32 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC33 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC34 (struct xgbe_prv_data*) ; 
 int FUNC35 (struct xgbe_prv_data*) ; 

__attribute__((used)) static int FUNC36(struct xgbe_prv_data *pdata)
{
	struct xgbe_desc_if *desc_if = &pdata->desc_if;
	int ret;

	FUNC0("-->xgbe_init\n");

	/* Flush Tx queues */
	ret = FUNC35(pdata);
	if (ret) {
		FUNC1(pdata->netdev, "error flushing TX queues\n");
		return ret;
	}

	/*
	 * Initialize DMA related features
	 */
	FUNC6(pdata);
	FUNC7(pdata);
	FUNC14(pdata);
	FUNC15(pdata);
	FUNC20(pdata);
	FUNC27(pdata);
	FUNC19(pdata);
	FUNC26(pdata);
	FUNC24(pdata);
	FUNC18(pdata);
	desc_if->wrapper_tx_desc_init(pdata);
	desc_if->wrapper_rx_desc_init(pdata);
	FUNC31(pdata);

	/*
	 * Initialize MTL related features
	 */
	FUNC13(pdata);
	FUNC16(pdata);
	FUNC25(pdata, pdata->tx_sf_mode);
	FUNC17(pdata, pdata->rx_sf_mode);
	FUNC29(pdata, pdata->tx_threshold);
	FUNC23(pdata, pdata->rx_threshold);
	FUNC28(pdata);
	FUNC21(pdata);
	/*TODO: Error Packet and undersized good Packet forwarding enable
		(FEP and FUP)
	 */
	FUNC5(pdata);
	FUNC34(pdata);

	/*
	 * Initialize MAC related features
	 */
	FUNC10(pdata);
	FUNC22(pdata);
	FUNC9(pdata);
	FUNC8(pdata);
	FUNC11(pdata);
	FUNC4(pdata);
	FUNC30(pdata);
	FUNC12(pdata);
	FUNC33(pdata);

	/*
	 * Initialize ECC related features
	 */
	FUNC32(pdata);

	FUNC0("<--xgbe_init\n");

	return 0;
}