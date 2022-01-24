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
struct xlgmac_desc_ops {int /*<<< orphan*/  (* rx_desc_init ) (struct xlgmac_pdata*) ;int /*<<< orphan*/  (* tx_desc_init ) (struct xlgmac_pdata*) ;} ;
struct xlgmac_pdata {int /*<<< orphan*/  rx_threshold; int /*<<< orphan*/  tx_threshold; int /*<<< orphan*/  rx_sf_mode; int /*<<< orphan*/  tx_sf_mode; struct xlgmac_desc_ops desc_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC6 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC7 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC9 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC10 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC11 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC12 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC13 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC14 (struct xlgmac_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC16 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC17 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC18 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC19 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC20 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC21 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC22 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC23 (struct xlgmac_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC25 (struct xlgmac_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC27 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC28 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC29 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC30 (struct xlgmac_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC32 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC33 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC34 (struct xlgmac_pdata*) ; 
 int FUNC35 (struct xlgmac_pdata*) ; 

__attribute__((used)) static int FUNC36(struct xlgmac_pdata *pdata)
{
	struct xlgmac_desc_ops *desc_ops = &pdata->desc_ops;
	int ret;

	/* Flush Tx queues */
	ret = FUNC35(pdata);
	if (ret)
		return ret;

	/* Initialize DMA related features */
	FUNC3(pdata);
	FUNC11(pdata);
	FUNC12(pdata);
	FUNC29(pdata);
	FUNC22(pdata);
	FUNC17(pdata);
	FUNC27(pdata);
	FUNC16(pdata);
	FUNC26(pdata);
	FUNC24(pdata);
	FUNC15(pdata);
	desc_ops->tx_desc_init(pdata);
	desc_ops->rx_desc_init(pdata);
	FUNC32(pdata);

	/* Initialize MTL related features */
	FUNC10(pdata);
	FUNC13(pdata);
	FUNC25(pdata, pdata->tx_sf_mode);
	FUNC14(pdata, pdata->rx_sf_mode);
	FUNC30(pdata, pdata->tx_threshold);
	FUNC23(pdata, pdata->rx_threshold);
	FUNC28(pdata);
	FUNC19(pdata);
	FUNC5(pdata);
	FUNC18(pdata);
	FUNC20(pdata);
	FUNC34(pdata);

	/* Initialize MAC related features */
	FUNC7(pdata);
	FUNC21(pdata);
	FUNC6(pdata);
	FUNC4(pdata);
	FUNC8(pdata);
	FUNC2(pdata);
	FUNC31(pdata);
	FUNC9(pdata);
	FUNC33(pdata);

	return 0;
}