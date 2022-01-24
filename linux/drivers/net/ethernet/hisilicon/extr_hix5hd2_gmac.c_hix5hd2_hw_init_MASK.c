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
typedef  int u32 ;
struct hix5hd2_priv {scalar_t__ base; } ;

/* Variables and functions */
 int BIT_CRC_ERR_PASS ; 
 scalar_t__ COL_SLOT_TIME ; 
 scalar_t__ CONTROL_WORD ; 
 scalar_t__ ENA_PMU_INT ; 
 scalar_t__ IN_QUEUE_TH ; 
 int MAC_MAX_FRAME_SIZE ; 
 int QUEUE_TX_BQ_SHIFT ; 
 scalar_t__ RAW_PMU_INT ; 
 scalar_t__ REC_FILT_CONTROL ; 
 int RX_BQ_INT_THRESHOLD ; 
 int RX_BQ_IN_TIMEOUT ; 
 scalar_t__ RX_BQ_IN_TIMEOUT_TH ; 
 int /*<<< orphan*/  RX_DESC_NUM ; 
 int /*<<< orphan*/  TX_DESC_NUM ; 
 int TX_RQ_INT_THRESHOLD ; 
 int TX_RQ_IN_TIMEOUT ; 
 scalar_t__ TX_RQ_IN_TIMEOUT_TH ; 
 int /*<<< orphan*/  FUNC0 (struct hix5hd2_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct hix5hd2_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct hix5hd2_priv *priv)
{
	u32 val;

	/* disable and clear all interrupts */
	FUNC2(0, priv->base + ENA_PMU_INT);
	FUNC2(~0, priv->base + RAW_PMU_INT);

	FUNC2(BIT_CRC_ERR_PASS, priv->base + REC_FILT_CONTROL);
	FUNC2(MAC_MAX_FRAME_SIZE, priv->base + CONTROL_WORD);
	FUNC2(0, priv->base + COL_SLOT_TIME);

	val = RX_BQ_INT_THRESHOLD | TX_RQ_INT_THRESHOLD << QUEUE_TX_BQ_SHIFT;
	FUNC2(val, priv->base + IN_QUEUE_TH);

	FUNC2(RX_BQ_IN_TIMEOUT, priv->base + RX_BQ_IN_TIMEOUT_TH);
	FUNC2(TX_RQ_IN_TIMEOUT, priv->base + TX_RQ_IN_TIMEOUT_TH);

	FUNC1(priv, RX_DESC_NUM, TX_DESC_NUM);
	FUNC0(priv);
}