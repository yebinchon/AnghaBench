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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct rcar_canfd_channel {int channel; TYPE_1__ can; scalar_t__ base; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_STATE_ERROR_ACTIVE ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RCANFD_CCTR_CHDMC_COPM ; 
 int /*<<< orphan*/  RCANFD_CCTR_CHMDC_MASK ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RCANFD_CFCC_CFE ; 
 int /*<<< orphan*/  RCANFD_CFFIFO_IDX ; 
 scalar_t__ FUNC2 (int) ; 
 int RCANFD_CSTS_COMSTS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  RCANFD_RFCC_RFE ; 
 int RCANFD_RFFIFO_IDX ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int) ; 
 struct rcar_canfd_channel* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct rcar_canfd_channel*) ; 
 int /*<<< orphan*/  FUNC7 (struct rcar_canfd_channel*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__,int,int,int,int) ; 

__attribute__((used)) static int FUNC12(struct net_device *ndev)
{
	struct rcar_canfd_channel *priv = FUNC5(ndev);
	int err = -EOPNOTSUPP;
	u32 sts, ch = priv->channel;
	u32 ridx = ch + RCANFD_RFFIFO_IDX;

	FUNC9(ndev);

	FUNC7(priv);

	/* Set channel to Operational mode */
	FUNC10(priv->base, FUNC0(ch),
			      RCANFD_CCTR_CHMDC_MASK, RCANFD_CCTR_CHDMC_COPM);

	/* Verify channel mode change */
	err = FUNC11((priv->base + FUNC2(ch)), sts,
				 (sts & RCANFD_CSTS_COMSTS), 2, 500000);
	if (err) {
		FUNC4(ndev, "channel %u communication state failed\n", ch);
		goto fail_mode_change;
	}

	/* Enable Common & Rx FIFO */
	FUNC8(priv->base, FUNC1(ch, RCANFD_CFFIFO_IDX),
			   RCANFD_CFCC_CFE);
	FUNC8(priv->base, FUNC3(ridx), RCANFD_RFCC_RFE);

	priv->can.state = CAN_STATE_ERROR_ACTIVE;
	return 0;

fail_mode_change:
	FUNC6(priv);
	return err;
}