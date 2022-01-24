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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct cmac_statistics {int dummy; } ;
struct cmac {struct cmac_statistics const stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RxBroadcastFramesOK ; 
 int /*<<< orphan*/  RxBroadcastFramesReceivedOK ; 
 int /*<<< orphan*/  RxFCSErrors ; 
 int /*<<< orphan*/  RxFragments ; 
 int /*<<< orphan*/  RxFrameCheckSequenceErrors ; 
 int /*<<< orphan*/  RxFrameTooLongErrors ; 
 int /*<<< orphan*/  RxFramesLostDueToInternalMACErrors ; 
 int /*<<< orphan*/  RxFramesTooLongErrors ; 
 int /*<<< orphan*/  RxInRangeLengthErrors ; 
 int /*<<< orphan*/  RxInternalMACRcvError ; 
 int /*<<< orphan*/  RxJabberErrors ; 
 int /*<<< orphan*/  RxJabbers ; 
 int /*<<< orphan*/  RxJumboFramesOK ; 
 int /*<<< orphan*/  RxJumboFramesReceivedOK ; 
 int /*<<< orphan*/  RxJumboOctetsOK ; 
 int /*<<< orphan*/  RxJumboOctetsReceivedOK ; 
 int /*<<< orphan*/  RxMulticastFramesOK ; 
 int /*<<< orphan*/  RxMulticastFramesReceivedOK ; 
 int /*<<< orphan*/  RxOctetsOK ; 
 int /*<<< orphan*/  RxOctetsReceivedOK ; 
 int /*<<< orphan*/  RxPAUSEMACCtrlFramesReceived ; 
 int /*<<< orphan*/  RxPauseFrames ; 
 int /*<<< orphan*/  RxRuntErrors ; 
 int /*<<< orphan*/  RxSymbolErrors ; 
 int /*<<< orphan*/  RxUndersizedFrames ; 
 int /*<<< orphan*/  RxUnicastFramesOK ; 
 int /*<<< orphan*/  RxUnicastFramesReceivedOK ; 
 int /*<<< orphan*/  SUNI1x10GEXP_BITMSK_MSTAT_SNAP ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_MSTAT_CONTROL ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_MSTAT_COUNTER_ROLLOVER_0 ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_MSTAT_COUNTER_ROLLOVER_1 ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_MSTAT_COUNTER_ROLLOVER_2 ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_MSTAT_COUNTER_ROLLOVER_3 ; 
 int /*<<< orphan*/  TxBroadcastFramesOK ; 
 int /*<<< orphan*/  TxBroadcastFramesTransmittedOK ; 
 int /*<<< orphan*/  TxFCSErrors ; 
 int /*<<< orphan*/  TxFramesLostDueToInternalMACTransmissionError ; 
 int /*<<< orphan*/  TxInternalMACXmitError ; 
 int /*<<< orphan*/  TxJumboFramesOK ; 
 int /*<<< orphan*/  TxJumboFramesReceivedOK ; 
 int /*<<< orphan*/  TxJumboOctetsOK ; 
 int /*<<< orphan*/  TxJumboOctetsReceivedOK ; 
 int /*<<< orphan*/  TxMulticastFramesOK ; 
 int /*<<< orphan*/  TxMulticastFramesTransmittedOK ; 
 int /*<<< orphan*/  TxOctetsOK ; 
 int /*<<< orphan*/  TxOctetsTransmittedOK ; 
 int /*<<< orphan*/  TxPAUSEMACCtrlFramesTransmitted ; 
 int /*<<< orphan*/  TxPauseFrames ; 
 int /*<<< orphan*/  TxTransmitSystemError ; 
 int /*<<< orphan*/  TxUnicastFramesOK ; 
 int /*<<< orphan*/  TxUnicastFramesTransmittedOK ; 
 int /*<<< orphan*/  FUNC1 (struct cmac*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct cmac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct cmac_statistics *FUNC3(struct cmac *mac,
							      int flag)
{
	u64	ro;
	u32	val0, val1, val2, val3;

	/* Snap the counters */
	FUNC2(mac, SUNI1x10GEXP_REG_MSTAT_CONTROL,
		SUNI1x10GEXP_BITMSK_MSTAT_SNAP);

	/* Counter rollover, clear on read */
	FUNC1(mac, SUNI1x10GEXP_REG_MSTAT_COUNTER_ROLLOVER_0, &val0);
	FUNC1(mac, SUNI1x10GEXP_REG_MSTAT_COUNTER_ROLLOVER_1, &val1);
	FUNC1(mac, SUNI1x10GEXP_REG_MSTAT_COUNTER_ROLLOVER_2, &val2);
	FUNC1(mac, SUNI1x10GEXP_REG_MSTAT_COUNTER_ROLLOVER_3, &val3);
	ro = ((u64)val0 & 0xffff) | (((u64)val1 & 0xffff) << 16) |
		(((u64)val2 & 0xffff) << 32) | (((u64)val3 & 0xffff) << 48);

	/* Rx stats */
	FUNC0(mac, RxOctetsReceivedOK, RxOctetsOK);
	FUNC0(mac, RxUnicastFramesReceivedOK, RxUnicastFramesOK);
	FUNC0(mac, RxMulticastFramesReceivedOK, RxMulticastFramesOK);
	FUNC0(mac, RxBroadcastFramesReceivedOK, RxBroadcastFramesOK);
	FUNC0(mac, RxPAUSEMACCtrlFramesReceived, RxPauseFrames);
	FUNC0(mac, RxFrameCheckSequenceErrors, RxFCSErrors);
	FUNC0(mac, RxFramesLostDueToInternalMACErrors,
				RxInternalMACRcvError);
	FUNC0(mac, RxSymbolErrors, RxSymbolErrors);
	FUNC0(mac, RxInRangeLengthErrors, RxInRangeLengthErrors);
	FUNC0(mac, RxFramesTooLongErrors , RxFrameTooLongErrors);
	FUNC0(mac, RxJabbers, RxJabberErrors);
	FUNC0(mac, RxFragments, RxRuntErrors);
	FUNC0(mac, RxUndersizedFrames, RxRuntErrors);
	FUNC0(mac, RxJumboFramesReceivedOK, RxJumboFramesOK);
	FUNC0(mac, RxJumboOctetsReceivedOK, RxJumboOctetsOK);

	/* Tx stats */
	FUNC0(mac, TxOctetsTransmittedOK, TxOctetsOK);
	FUNC0(mac, TxFramesLostDueToInternalMACTransmissionError,
				TxInternalMACXmitError);
	FUNC0(mac, TxTransmitSystemError, TxFCSErrors);
	FUNC0(mac, TxUnicastFramesTransmittedOK, TxUnicastFramesOK);
	FUNC0(mac, TxMulticastFramesTransmittedOK, TxMulticastFramesOK);
	FUNC0(mac, TxBroadcastFramesTransmittedOK, TxBroadcastFramesOK);
	FUNC0(mac, TxPAUSEMACCtrlFramesTransmitted, TxPauseFrames);
	FUNC0(mac, TxJumboFramesReceivedOK, TxJumboFramesOK);
	FUNC0(mac, TxJumboOctetsReceivedOK, TxJumboOctetsOK);

	return &mac->stats;
}