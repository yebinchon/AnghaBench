#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sxgbe_hw_features {int /*<<< orphan*/  aux_input_count; int /*<<< orphan*/  pps_output_count; int /*<<< orphan*/  tx_dma_channels; int /*<<< orphan*/  rx_dma_channels; int /*<<< orphan*/  tx_mtl_queues; int /*<<< orphan*/  rx_mtl_queues; int /*<<< orphan*/  l3l4_filer_size; int /*<<< orphan*/  hash_tsize; int /*<<< orphan*/  rss_enable; int /*<<< orphan*/  debug_mem; int /*<<< orphan*/  tcpseg_offload; int /*<<< orphan*/  splithead_enable; int /*<<< orphan*/  dcb_enable; void* atstmap_hword; void* txfifo_size; int /*<<< orphan*/  rxfifo_size; int /*<<< orphan*/  eee; int /*<<< orphan*/  sa_vlan_insert; int /*<<< orphan*/  tstamp_srcselect; int /*<<< orphan*/  multi_macaddr; int /*<<< orphan*/  rx_csum_offload; int /*<<< orphan*/  tx_csum_offload; int /*<<< orphan*/  atime_stamp; int /*<<< orphan*/  pmt_magic_frame; int /*<<< orphan*/  pmt_remote_wake_up; } ;
struct sxgbe_priv_data {int /*<<< orphan*/  ioaddr; TYPE_2__* hw; struct sxgbe_hw_features hw_cap; } ;
struct TYPE_4__ {TYPE_1__* mac; } ;
struct TYPE_3__ {int (* get_hw_feature ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 void* FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int FUNC24 (int /*<<< orphan*/ ,int) ; 
 int FUNC25 (int /*<<< orphan*/ ,int) ; 
 int FUNC26 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC27(struct sxgbe_priv_data * const priv)
{
	int rval = 0;
	struct sxgbe_hw_features *features = &priv->hw_cap;

	/* Read First Capability Register CAP[0] */
	rval = priv->hw->mac->get_hw_feature(priv->ioaddr, 0);
	if (rval) {
		features->pmt_remote_wake_up =
			FUNC9(rval);
		features->pmt_magic_frame = FUNC8(rval);
		features->atime_stamp = FUNC5(rval);
		features->tx_csum_offload =
			FUNC20(rval);
		features->rx_csum_offload =
			FUNC12(rval);
		features->multi_macaddr = FUNC7(rval);
		features->tstamp_srcselect = FUNC19(rval);
		features->sa_vlan_insert = FUNC17(rval);
		features->eee = FUNC3(rval);
	}

	/* Read First Capability Register CAP[1] */
	rval = priv->hw->mac->get_hw_feature(priv->ioaddr, 1);
	if (rval) {
		features->rxfifo_size = FUNC14(rval);
		features->txfifo_size = FUNC22(rval);
		features->atstmap_hword = FUNC22(rval);
		features->dcb_enable = FUNC1(rval);
		features->splithead_enable = FUNC16(rval);
		features->tcpseg_offload = FUNC18(rval);
		features->debug_mem = FUNC2(rval);
		features->rss_enable = FUNC11(rval);
		features->hash_tsize = FUNC4(rval);
		features->l3l4_filer_size = FUNC6(rval);
	}

	/* Read First Capability Register CAP[2] */
	rval = priv->hw->mac->get_hw_feature(priv->ioaddr, 2);
	if (rval) {
		features->rx_mtl_queues = FUNC15(rval);
		features->tx_mtl_queues = FUNC23(rval);
		features->rx_dma_channels = FUNC13(rval);
		features->tx_dma_channels = FUNC21(rval);
		features->pps_output_count = FUNC10(rval);
		features->aux_input_count = FUNC0(rval);
	}

	return rval;
}