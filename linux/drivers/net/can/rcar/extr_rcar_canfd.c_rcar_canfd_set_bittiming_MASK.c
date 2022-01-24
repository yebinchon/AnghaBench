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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct can_bittiming {scalar_t__ phase_seg2; scalar_t__ phase_seg1; scalar_t__ prop_seg; scalar_t__ sjw; scalar_t__ brp; } ;
struct TYPE_2__ {int ctrlmode; struct can_bittiming data_bittiming; struct can_bittiming bittiming; } ;
struct rcar_canfd_channel {int channel; int /*<<< orphan*/  ndev; int /*<<< orphan*/  base; TYPE_1__ can; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int CAN_CTRLMODE_FD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (scalar_t__) ; 
 int FUNC11 (scalar_t__) ; 
 int FUNC12 (scalar_t__) ; 
 int FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 struct rcar_canfd_channel* FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC17(struct net_device *dev)
{
	struct rcar_canfd_channel *priv = FUNC15(dev);
	const struct can_bittiming *bt = &priv->can.bittiming;
	const struct can_bittiming *dbt = &priv->can.data_bittiming;
	u16 brp, sjw, tseg1, tseg2;
	u32 cfg;
	u32 ch = priv->channel;

	/* Nominal bit timing settings */
	brp = bt->brp - 1;
	sjw = bt->sjw - 1;
	tseg1 = bt->prop_seg + bt->phase_seg1 - 1;
	tseg2 = bt->phase_seg2 - 1;

	if (priv->can.ctrlmode & CAN_CTRLMODE_FD) {
		/* CAN FD only mode */
		cfg = (FUNC12(tseg1) | FUNC10(brp) |
		       FUNC11(sjw) | FUNC13(tseg2));

		FUNC16(priv->base, FUNC0(ch), cfg);
		FUNC14(priv->ndev, "nrate: brp %u, sjw %u, tseg1 %u, tseg2 %u\n",
			   brp, sjw, tseg1, tseg2);

		/* Data bit timing settings */
		brp = dbt->brp - 1;
		sjw = dbt->sjw - 1;
		tseg1 = dbt->prop_seg + dbt->phase_seg1 - 1;
		tseg2 = dbt->phase_seg2 - 1;

		cfg = (FUNC7(tseg1) | FUNC5(brp) |
		       FUNC6(sjw) | FUNC8(tseg2));

		FUNC16(priv->base, FUNC9(ch), cfg);
		FUNC14(priv->ndev, "drate: brp %u, sjw %u, tseg1 %u, tseg2 %u\n",
			   brp, sjw, tseg1, tseg2);
	} else {
		/* Classical CAN only mode */
		cfg = (FUNC3(tseg1) | FUNC1(brp) |
			FUNC2(sjw) | FUNC4(tseg2));

		FUNC16(priv->base, FUNC0(ch), cfg);
		FUNC14(priv->ndev,
			   "rate: brp %u, sjw %u, tseg1 %u, tseg2 %u\n",
			   brp, sjw, tseg1, tseg2);
	}
}