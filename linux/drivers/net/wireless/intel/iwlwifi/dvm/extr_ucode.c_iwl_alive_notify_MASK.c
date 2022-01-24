#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct iwl_priv {int passive_no_rx; TYPE_4__* lib; scalar_t__ transport_queue_stop; int /*<<< orphan*/  trans; TYPE_3__* nvm_data; TYPE_2__* fw; } ;
struct TYPE_8__ {int /*<<< orphan*/  no_xtal_calib; } ;
struct TYPE_7__ {scalar_t__ sku_cap_ipan_enable; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ ucode_capa; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int const IWL_TX_FIFO_UNUSED ; 
 int IWL_UCODE_TLV_FLAGS_PAN ; 
 int FUNC1 (struct iwl_priv*) ; 
 int FUNC2 (struct iwl_priv*) ; 
 int FUNC3 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* iwlagn_default_queue_to_tx_fifo ; 
 int* iwlagn_ipan_queue_to_tx_fifo ; 

__attribute__((used)) static int FUNC6(struct iwl_priv *priv)
{
	const u8 *queue_to_txf;
	u8 n_queues;
	int ret;
	int i;

	FUNC5(priv->trans, 0);

	if (priv->fw->ucode_capa.flags & IWL_UCODE_TLV_FLAGS_PAN &&
	    priv->nvm_data->sku_cap_ipan_enable) {
		n_queues = FUNC0(iwlagn_ipan_queue_to_tx_fifo);
		queue_to_txf = iwlagn_ipan_queue_to_tx_fifo;
	} else {
		n_queues = FUNC0(iwlagn_default_queue_to_tx_fifo);
		queue_to_txf = iwlagn_default_queue_to_tx_fifo;
	}

	for (i = 0; i < n_queues; i++)
		if (queue_to_txf[i] != IWL_TX_FIFO_UNUSED)
			FUNC4(priv->trans, i,
						queue_to_txf[i], 0);

	priv->passive_no_rx = false;
	priv->transport_queue_stop = 0;

	ret = FUNC2(priv);
	if (ret)
		return ret;

	if (!priv->lib->no_xtal_calib) {
		ret = FUNC3(priv);
		if (ret)
			return ret;
	}

	return FUNC1(priv);
}