#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {scalar_t__ rx_csum_offload; scalar_t__ tx_csum_offload; } ;
struct sxgbe_priv_data {TYPE_2__ hw_cap; TYPE_3__* hw; int /*<<< orphan*/  ioaddr; } ;
struct TYPE_7__ {int ctrl_uid; int ctrl_id; TYPE_1__* mac; } ;
struct TYPE_5__ {int (* get_controller_version ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_3__* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sxgbe_priv_data* const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC5(struct sxgbe_priv_data * const priv)
{
	u32 ctrl_ids;

	priv->hw = FUNC0(sizeof(*priv->hw), GFP_KERNEL);
	if(!priv->hw)
		return -ENOMEM;

	/* get the hardware ops */
	FUNC4(priv->hw);

	/* get the controller id */
	ctrl_ids = priv->hw->mac->get_controller_version(priv->ioaddr);
	priv->hw->ctrl_uid = (ctrl_ids & 0x00ff0000) >> 16;
	priv->hw->ctrl_id = (ctrl_ids & 0x000000ff);
	FUNC1("user ID: 0x%x, Controller ID: 0x%x\n",
		priv->hw->ctrl_uid, priv->hw->ctrl_id);

	/* get the H/W features */
	if (!FUNC3(priv))
		FUNC1("Hardware features not found\n");

	if (priv->hw_cap.tx_csum_offload)
		FUNC1("TX Checksum offload supported\n");

	if (priv->hw_cap.rx_csum_offload)
		FUNC1("RX Checksum offload supported\n");

	return 0;
}