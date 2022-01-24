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
struct xgbe_channel {int /*<<< orphan*/  curr_ier; int /*<<< orphan*/  saved_ier; } ;
typedef  enum xgbe_int { ____Placeholder_xgbe_int } xgbe_int ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CH_IER ; 
 int /*<<< orphan*/  FBEE ; 
 int /*<<< orphan*/  RBUE ; 
 int /*<<< orphan*/  RIE ; 
 int /*<<< orphan*/  RSE ; 
 int /*<<< orphan*/  TBUE ; 
 int /*<<< orphan*/  TIE ; 
 int /*<<< orphan*/  TXSE ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  XGMAC_INT_DMA_ALL 136 
#define  XGMAC_INT_DMA_CH_SR_FBE 135 
#define  XGMAC_INT_DMA_CH_SR_RBU 134 
#define  XGMAC_INT_DMA_CH_SR_RI 133 
#define  XGMAC_INT_DMA_CH_SR_RPS 132 
#define  XGMAC_INT_DMA_CH_SR_TBU 131 
#define  XGMAC_INT_DMA_CH_SR_TI 130 
#define  XGMAC_INT_DMA_CH_SR_TI_RI 129 
#define  XGMAC_INT_DMA_CH_SR_TPS 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct xgbe_channel *channel,
			    enum xgbe_int int_id)
{
	switch (int_id) {
	case XGMAC_INT_DMA_CH_SR_TI:
		FUNC1(channel->curr_ier, DMA_CH_IER, TIE, 0);
		break;
	case XGMAC_INT_DMA_CH_SR_TPS:
		FUNC1(channel->curr_ier, DMA_CH_IER, TXSE, 0);
		break;
	case XGMAC_INT_DMA_CH_SR_TBU:
		FUNC1(channel->curr_ier, DMA_CH_IER, TBUE, 0);
		break;
	case XGMAC_INT_DMA_CH_SR_RI:
		FUNC1(channel->curr_ier, DMA_CH_IER, RIE, 0);
		break;
	case XGMAC_INT_DMA_CH_SR_RBU:
		FUNC1(channel->curr_ier, DMA_CH_IER, RBUE, 0);
		break;
	case XGMAC_INT_DMA_CH_SR_RPS:
		FUNC1(channel->curr_ier, DMA_CH_IER, RSE, 0);
		break;
	case XGMAC_INT_DMA_CH_SR_TI_RI:
		FUNC1(channel->curr_ier, DMA_CH_IER, TIE, 0);
		FUNC1(channel->curr_ier, DMA_CH_IER, RIE, 0);
		break;
	case XGMAC_INT_DMA_CH_SR_FBE:
		FUNC1(channel->curr_ier, DMA_CH_IER, FBEE, 0);
		break;
	case XGMAC_INT_DMA_ALL:
		channel->saved_ier = channel->curr_ier;
		channel->curr_ier = 0;
		break;
	default:
		return -1;
	}

	FUNC0(channel, DMA_CH_IER, channel->curr_ier);

	return 0;
}