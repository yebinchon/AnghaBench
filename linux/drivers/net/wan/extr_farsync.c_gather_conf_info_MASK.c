#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fstioc_info {scalar_t__ type; scalar_t__ state; int index; int valid; int cableStatus; void* alarmIndicationSignal; void* receiveRemoteAlarm; void* lossOfSignal; void* lineAttenuation; void* crcErrorCount; void* codeViolationCount; void* framingErrorCount; void* receiveBufferDelay; void* idleCode; void* losThreshold; void* startingSlot; void* rxBufferMode; void* txBufferMode; void* range; void* loopMode; void* equalizer; void* lineBuildOut; void* coding; void* interface; void* structure; void* framing; void* clockSource; void* lineSpeed; void* smcFirmwareVersion; void* cardMode; void* clockStatus; void* v24OpSts; void* v24IpSts; void* invertClock; void* internalClock; void* lineInterface; int /*<<< orphan*/  debug; int /*<<< orphan*/  proto; int /*<<< orphan*/  nports; int /*<<< orphan*/  kernelVersion; } ;
struct fst_port_info {int index; } ;
struct fst_card_info {scalar_t__ type; scalar_t__ state; scalar_t__ family; int /*<<< orphan*/  nports; } ;
struct TYPE_6__ {int /*<<< orphan*/  invertClock; int /*<<< orphan*/  lineSpeed; int /*<<< orphan*/  internalClock; int /*<<< orphan*/  lineInterface; } ;
struct TYPE_5__ {int /*<<< orphan*/  idleCode; int /*<<< orphan*/  enableIdleCode; int /*<<< orphan*/  losThreshold; int /*<<< orphan*/  startingSlot; int /*<<< orphan*/  rxBufferMode; int /*<<< orphan*/  txBufferMode; int /*<<< orphan*/  range; int /*<<< orphan*/  loopMode; int /*<<< orphan*/  equalizer; int /*<<< orphan*/  lineBuildOut; int /*<<< orphan*/  coding; int /*<<< orphan*/  interface; int /*<<< orphan*/  structure; int /*<<< orphan*/  framing; int /*<<< orphan*/  clocking; int /*<<< orphan*/  dataRate; } ;
struct TYPE_4__ {int /*<<< orphan*/  alarmIndicationSignal; int /*<<< orphan*/  receiveRemoteAlarm; int /*<<< orphan*/  lossOfSignal; int /*<<< orphan*/  lineAttenuation; int /*<<< orphan*/  crcErrorCount; int /*<<< orphan*/  codeViolationCount; int /*<<< orphan*/  framingErrorCount; int /*<<< orphan*/  receiveBufferDelay; } ;

/* Variables and functions */
 int FSTVAL_ALL ; 
 int FSTVAL_CARD ; 
 int FSTVAL_DEBUG ; 
 scalar_t__ FST_FAMILY_TXU ; 
 int /*<<< orphan*/  FST_GEN_HDLC ; 
 void* FUNC0 (struct fst_card_info*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct fst_card_info*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct fst_card_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FST_RUNNING ; 
 scalar_t__ FST_TYPE_TE1 ; 
 int /*<<< orphan*/  LINUX_VERSION_CODE ; 
 int /*<<< orphan*/  cableStatus ; 
 int /*<<< orphan*/  cardMode ; 
 int /*<<< orphan*/ * clockStatus ; 
 int /*<<< orphan*/  fst_debug_mask ; 
 int /*<<< orphan*/  FUNC3 (struct fstioc_info*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* portConfig ; 
 int /*<<< orphan*/  smcFirmwareVersion ; 
 TYPE_2__ suConfig ; 
 TYPE_1__ suStatus ; 
 int /*<<< orphan*/ * v24IpSts ; 
 int /*<<< orphan*/ * v24OpSts ; 

__attribute__((used)) static void
FUNC4(struct fst_card_info *card, struct fst_port_info *port,
		 struct fstioc_info *info)
{
	int i;

	FUNC3(info, 0, sizeof (struct fstioc_info));

	i = port->index;
	info->kernelVersion = LINUX_VERSION_CODE;
	info->nports = card->nports;
	info->type = card->type;
	info->state = card->state;
	info->proto = FST_GEN_HDLC;
	info->index = i;
#if FST_DEBUG
	info->debug = fst_debug_mask;
#endif

	/* Only mark information as valid if card is running.
	 * Copy the data anyway in case it is useful for diagnostics
	 */
	info->valid = ((card->state == FST_RUNNING) ? FSTVAL_ALL : FSTVAL_CARD)
#if FST_DEBUG
	    | FSTVAL_DEBUG
#endif
	    ;

	info->lineInterface = FUNC2(card, portConfig[i].lineInterface);
	info->internalClock = FUNC0(card, portConfig[i].internalClock);
	info->lineSpeed = FUNC1(card, portConfig[i].lineSpeed);
	info->invertClock = FUNC0(card, portConfig[i].invertClock);
	info->v24IpSts = FUNC1(card, v24IpSts[i]);
	info->v24OpSts = FUNC1(card, v24OpSts[i]);
	info->clockStatus = FUNC2(card, clockStatus[i]);
	info->cableStatus = FUNC2(card, cableStatus);
	info->cardMode = FUNC2(card, cardMode);
	info->smcFirmwareVersion = FUNC1(card, smcFirmwareVersion);

	/*
	 * The T2U can report cable presence for both A or B
	 * in bits 0 and 1 of cableStatus.  See which port we are and 
	 * do the mapping.
	 */
	if (card->family == FST_FAMILY_TXU) {
		if (port->index == 0) {
			/*
			 * Port A
			 */
			info->cableStatus = info->cableStatus & 1;
		} else {
			/*
			 * Port B
			 */
			info->cableStatus = info->cableStatus >> 1;
			info->cableStatus = info->cableStatus & 1;
		}
	}
	/*
	 * Some additional bits if we are TE1
	 */
	if (card->type == FST_TYPE_TE1) {
		info->lineSpeed = FUNC1(card, suConfig.dataRate);
		info->clockSource = FUNC0(card, suConfig.clocking);
		info->framing = FUNC0(card, suConfig.framing);
		info->structure = FUNC0(card, suConfig.structure);
		info->interface = FUNC0(card, suConfig.interface);
		info->coding = FUNC0(card, suConfig.coding);
		info->lineBuildOut = FUNC0(card, suConfig.lineBuildOut);
		info->equalizer = FUNC0(card, suConfig.equalizer);
		info->loopMode = FUNC0(card, suConfig.loopMode);
		info->range = FUNC0(card, suConfig.range);
		info->txBufferMode = FUNC0(card, suConfig.txBufferMode);
		info->rxBufferMode = FUNC0(card, suConfig.rxBufferMode);
		info->startingSlot = FUNC0(card, suConfig.startingSlot);
		info->losThreshold = FUNC0(card, suConfig.losThreshold);
		if (FUNC0(card, suConfig.enableIdleCode))
			info->idleCode = FUNC0(card, suConfig.idleCode);
		else
			info->idleCode = 0;
		info->receiveBufferDelay =
		    FUNC1(card, suStatus.receiveBufferDelay);
		info->framingErrorCount =
		    FUNC1(card, suStatus.framingErrorCount);
		info->codeViolationCount =
		    FUNC1(card, suStatus.codeViolationCount);
		info->crcErrorCount = FUNC1(card, suStatus.crcErrorCount);
		info->lineAttenuation = FUNC1(card, suStatus.lineAttenuation);
		info->lossOfSignal = FUNC0(card, suStatus.lossOfSignal);
		info->receiveRemoteAlarm =
		    FUNC0(card, suStatus.receiveRemoteAlarm);
		info->alarmIndicationSignal =
		    FUNC0(card, suStatus.alarmIndicationSignal);
	}
}