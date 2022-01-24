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
struct pucan_wr_err_cnt {scalar_t__ rx_counter; scalar_t__ tx_counter; int /*<<< orphan*/  sel_mask; } ;
struct peak_canfd_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PUCAN_CMD_WR_ERR_CNT ; 
 int PUCAN_WRERRCNT_RE ; 
 int PUCAN_WRERRCNT_TE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct pucan_wr_err_cnt* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct peak_canfd_priv*) ; 
 int FUNC3 (struct peak_canfd_priv*) ; 

__attribute__((used)) static int FUNC4(struct peak_canfd_priv *priv)
{
	struct pucan_wr_err_cnt *cmd;

	cmd = FUNC1(FUNC2(priv), PUCAN_CMD_WR_ERR_CNT);

	cmd->sel_mask = FUNC0(PUCAN_WRERRCNT_TE | PUCAN_WRERRCNT_RE);
	cmd->tx_counter = 0;
	cmd->rx_counter = 0;

	return FUNC3(priv);
}