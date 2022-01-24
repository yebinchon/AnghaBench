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
struct ec_bhf_priv {scalar_t__ mac_io; scalar_t__ fifo_io; } ;

/* Variables and functions */
 scalar_t__ FIFO_RX_RESET ; 
 scalar_t__ FIFO_TX_RESET ; 
 scalar_t__ MAC_CRC_ERR_CNT ; 
 scalar_t__ MAC_DROPPED_FRMS ; 
 scalar_t__ MAC_FRAME_ERR_CNT ; 
 scalar_t__ MAC_LNK_LST_ERR_CNT ; 
 scalar_t__ MAC_RX_ERR_CNT ; 
 scalar_t__ MAC_RX_FRAME_CNT ; 
 scalar_t__ MAC_TX_FIFO_LVL ; 
 scalar_t__ MAC_TX_FRAME_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct ec_bhf_priv *priv)
{
	FUNC1(0, priv->mac_io + MAC_FRAME_ERR_CNT);
	FUNC1(0, priv->mac_io + MAC_RX_ERR_CNT);
	FUNC1(0, priv->mac_io + MAC_CRC_ERR_CNT);
	FUNC1(0, priv->mac_io + MAC_LNK_LST_ERR_CNT);
	FUNC0(0, priv->mac_io + MAC_TX_FRAME_CNT);
	FUNC0(0, priv->mac_io + MAC_RX_FRAME_CNT);
	FUNC1(0, priv->mac_io + MAC_DROPPED_FRMS);

	FUNC1(0, priv->fifo_io + FIFO_TX_RESET);
	FUNC1(0, priv->fifo_io + FIFO_RX_RESET);

	FUNC1(0, priv->mac_io + MAC_TX_FIFO_LVL);
}