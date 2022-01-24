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
struct ath_tx_info {int link; int* buf_addr; int* buf_len; scalar_t__ keytype; int aggr; scalar_t__ keyix; scalar_t__ type; int flags; scalar_t__ aggr_len; scalar_t__ ndelim; int pkt_len; scalar_t__* txpower; scalar_t__ rtscts_rate; int /*<<< orphan*/  rates; scalar_t__ is_first; scalar_t__ dur_update; scalar_t__ is_last; } ;
struct ath_hw {int dummy; } ;
struct ar5416_desc {scalar_t__ ds_ctl11; scalar_t__ ds_ctl10; scalar_t__ ds_ctl9; scalar_t__ ds_ctl7; scalar_t__ ds_ctl5; scalar_t__ ds_ctl4; scalar_t__ ds_ctl6; scalar_t__ ds_ctl1; scalar_t__ ds_ctl0; scalar_t__ ds_ctl3; scalar_t__ ds_ctl2; scalar_t__ ds_ctl8; scalar_t__ ds_data; scalar_t__ ds_link; scalar_t__ ds_txstatus9; scalar_t__ ds_txstatus8; scalar_t__ ds_txstatus7; scalar_t__ ds_txstatus6; scalar_t__ ds_txstatus5; scalar_t__ ds_txstatus4; scalar_t__ ds_txstatus3; scalar_t__ ds_txstatus2; scalar_t__ ds_txstatus1; scalar_t__ ds_txstatus0; } ;

/* Variables and functions */
#define  AGGR_BUF_FIRST 131 
#define  AGGR_BUF_LAST 130 
#define  AGGR_BUF_MIDDLE 129 
#define  AGGR_BUF_NONE 128 
 struct ar5416_desc* FUNC0 (void*) ; 
 int /*<<< orphan*/  AR_AggrLen ; 
 int /*<<< orphan*/  AR_BurstDur ; 
 int AR_CTSEnable ; 
 int AR_ClrDestMask ; 
 int /*<<< orphan*/  AR_DestIdx ; 
 int AR_DestIdxValid ; 
 int AR_DurUpdateEna ; 
 int /*<<< orphan*/  AR_EncrType ; 
 int AR_ExtAndCtl ; 
 int AR_ExtOnly ; 
 int AR_FrameLen ; 
 int /*<<< orphan*/  AR_FrameType ; 
 int AR_IsAggr ; 
 int AR_MoreAggr ; 
 int AR_NoAck ; 
 int /*<<< orphan*/  AR_PadDelim ; 
 int /*<<< orphan*/  AR_RTSCTSRate ; 
 int AR_RTSEnable ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 int AR_TxIntrReq ; 
 int AR_TxMore ; 
 int AR_VEOL ; 
 int AR_VirtMoreFrag ; 
 int /*<<< orphan*/  AR_XmitPower0 ; 
 int /*<<< orphan*/  AR_XmitPower1 ; 
 int /*<<< orphan*/  AR_XmitPower2 ; 
 int /*<<< orphan*/  AR_XmitPower3 ; 
 int ATH9K_TXDESC_CLRDMASK ; 
 int ATH9K_TXDESC_CTSENA ; 
 int ATH9K_TXDESC_EXT_AND_CTL ; 
 int ATH9K_TXDESC_EXT_ONLY ; 
 int ATH9K_TXDESC_INTREQ ; 
 int ATH9K_TXDESC_NOACK ; 
 int ATH9K_TXDESC_RTSENA ; 
 int ATH9K_TXDESC_VEOL ; 
 int ATH9K_TXDESC_VMF ; 
 scalar_t__ ATH9K_TXKEYIX_INVALID ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(struct ath_hw *ah, void *ds, struct ath_tx_info *i)
{
	struct ar5416_desc *ads = FUNC0(ds);
	u32 ctl1, ctl6;

	ads->ds_txstatus0 = ads->ds_txstatus1 = 0;
	ads->ds_txstatus2 = ads->ds_txstatus3 = 0;
	ads->ds_txstatus4 = ads->ds_txstatus5 = 0;
	ads->ds_txstatus6 = ads->ds_txstatus7 = 0;
	ads->ds_txstatus8 = ads->ds_txstatus9 = 0;

	FUNC3(ads->ds_link, i->link);
	FUNC3(ads->ds_data, i->buf_addr[0]);

	ctl1 = i->buf_len[0] | (i->is_last ? 0 : AR_TxMore);
	ctl6 = FUNC2(i->keytype, AR_EncrType);

	if (FUNC1(ah)) {
		ads->ds_ctl8 = 0;
		ads->ds_ctl9 = 0;
		ads->ds_ctl10 = 0;
		ads->ds_ctl11 = 0;
	}

	if ((i->is_first || i->is_last) &&
	    i->aggr != AGGR_BUF_MIDDLE && i->aggr != AGGR_BUF_LAST) {
		FUNC3(ads->ds_ctl2, FUNC7(i->rates, 0)
			| FUNC7(i->rates, 1)
			| FUNC7(i->rates, 2)
			| FUNC7(i->rates, 3)
			| (i->dur_update ? AR_DurUpdateEna : 0)
			| FUNC2(0, AR_BurstDur));

		FUNC3(ads->ds_ctl3, FUNC5(i->rates, 0)
			| FUNC5(i->rates, 1)
			| FUNC5(i->rates, 2)
			| FUNC5(i->rates, 3));
	} else {
		FUNC3(ads->ds_ctl2, 0);
		FUNC3(ads->ds_ctl3, 0);
	}

	if (!i->is_first) {
		FUNC3(ads->ds_ctl0, 0);
		FUNC3(ads->ds_ctl1, ctl1);
		FUNC3(ads->ds_ctl6, ctl6);
		return;
	}

	ctl1 |= (i->keyix != ATH9K_TXKEYIX_INVALID ? FUNC2(i->keyix, AR_DestIdx) : 0)
		| FUNC2(i->type, AR_FrameType)
		| (i->flags & ATH9K_TXDESC_NOACK ? AR_NoAck : 0)
		| (i->flags & ATH9K_TXDESC_EXT_ONLY ? AR_ExtOnly : 0)
		| (i->flags & ATH9K_TXDESC_EXT_AND_CTL ? AR_ExtAndCtl : 0);

	switch (i->aggr) {
	case AGGR_BUF_FIRST:
		ctl6 |= FUNC2(i->aggr_len, AR_AggrLen);
		/* fall through */
	case AGGR_BUF_MIDDLE:
		ctl1 |= AR_IsAggr | AR_MoreAggr;
		ctl6 |= FUNC2(i->ndelim, AR_PadDelim);
		break;
	case AGGR_BUF_LAST:
		ctl1 |= AR_IsAggr;
		break;
	case AGGR_BUF_NONE:
		break;
	}

	FUNC3(ads->ds_ctl0, (i->pkt_len & AR_FrameLen)
		| (i->flags & ATH9K_TXDESC_VMF ? AR_VirtMoreFrag : 0)
		| FUNC2(i->txpower[0], AR_XmitPower0)
		| (i->flags & ATH9K_TXDESC_VEOL ? AR_VEOL : 0)
		| (i->flags & ATH9K_TXDESC_INTREQ ? AR_TxIntrReq : 0)
		| (i->keyix != ATH9K_TXKEYIX_INVALID ? AR_DestIdxValid : 0)
		| (i->flags & ATH9K_TXDESC_CLRDMASK ? AR_ClrDestMask : 0)
		| (i->flags & ATH9K_TXDESC_RTSENA ? AR_RTSEnable :
		   (i->flags & ATH9K_TXDESC_CTSENA ? AR_CTSEnable : 0)));

	FUNC3(ads->ds_ctl1, ctl1);
	FUNC3(ads->ds_ctl6, ctl6);

	if (i->aggr == AGGR_BUF_MIDDLE || i->aggr == AGGR_BUF_LAST)
		return;

	FUNC3(ads->ds_ctl4, FUNC4(i->rates, 0)
		| FUNC4(i->rates, 1));

	FUNC3(ads->ds_ctl5, FUNC4(i->rates, 2)
		| FUNC4(i->rates, 3));

	FUNC3(ads->ds_ctl7, FUNC6(i->rates, 0)
		| FUNC6(i->rates, 1)
		| FUNC6(i->rates, 2)
		| FUNC6(i->rates, 3)
		| FUNC2(i->rtscts_rate, AR_RTSCTSRate));

	FUNC3(ads->ds_ctl9, FUNC2(i->txpower[1], AR_XmitPower1));
	FUNC3(ads->ds_ctl10, FUNC2(i->txpower[2], AR_XmitPower2));
	FUNC3(ads->ds_ctl11, FUNC2(i->txpower[3], AR_XmitPower3));
}