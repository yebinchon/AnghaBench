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
struct pucan_timing_fast {int /*<<< orphan*/  sjw; int /*<<< orphan*/  tseg2; int /*<<< orphan*/  tseg1; int /*<<< orphan*/  brp; } ;
struct peak_canfd_priv {int /*<<< orphan*/  ndev; } ;
struct can_bittiming {scalar_t__ brp; scalar_t__ phase_seg2; scalar_t__ phase_seg1; scalar_t__ prop_seg; scalar_t__ sjw; } ;

/* Variables and functions */
 int /*<<< orphan*/  PUCAN_CMD_TIMING_FAST ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pucan_timing_fast* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct peak_canfd_priv*) ; 
 int FUNC9 (struct peak_canfd_priv*) ; 

__attribute__((used)) static int FUNC10(struct peak_canfd_priv *priv,
				 const struct can_bittiming *pbt)
{
	struct pucan_timing_fast *cmd;

	cmd = FUNC7(FUNC8(priv), PUCAN_CMD_TIMING_FAST);

	cmd->sjw = FUNC1(pbt->sjw - 1);
	cmd->tseg1 = FUNC2(pbt->prop_seg + pbt->phase_seg1 - 1);
	cmd->tseg2 = FUNC3(pbt->phase_seg2 - 1);
	cmd->brp = FUNC4(FUNC0(pbt->brp - 1));

	FUNC6(priv->ndev,
		   "data: brp=%u tseg1=%u tseg2=%u sjw=%u\n",
		   FUNC5(cmd->brp), cmd->tseg1, cmd->tseg2, cmd->sjw);

	return FUNC9(priv);
}