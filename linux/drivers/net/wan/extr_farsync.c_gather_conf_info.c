
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fstioc_info {scalar_t__ type; scalar_t__ state; int index; int valid; int cableStatus; void* alarmIndicationSignal; void* receiveRemoteAlarm; void* lossOfSignal; void* lineAttenuation; void* crcErrorCount; void* codeViolationCount; void* framingErrorCount; void* receiveBufferDelay; void* idleCode; void* losThreshold; void* startingSlot; void* rxBufferMode; void* txBufferMode; void* range; void* loopMode; void* equalizer; void* lineBuildOut; void* coding; void* interface; void* structure; void* framing; void* clockSource; void* lineSpeed; void* smcFirmwareVersion; void* cardMode; void* clockStatus; void* v24OpSts; void* v24IpSts; void* invertClock; void* internalClock; void* lineInterface; int debug; int proto; int nports; int kernelVersion; } ;
struct fst_port_info {int index; } ;
struct fst_card_info {scalar_t__ type; scalar_t__ state; scalar_t__ family; int nports; } ;
struct TYPE_6__ {int invertClock; int lineSpeed; int internalClock; int lineInterface; } ;
struct TYPE_5__ {int idleCode; int enableIdleCode; int losThreshold; int startingSlot; int rxBufferMode; int txBufferMode; int range; int loopMode; int equalizer; int lineBuildOut; int coding; int interface; int structure; int framing; int clocking; int dataRate; } ;
struct TYPE_4__ {int alarmIndicationSignal; int receiveRemoteAlarm; int lossOfSignal; int lineAttenuation; int crcErrorCount; int codeViolationCount; int framingErrorCount; int receiveBufferDelay; } ;


 int FSTVAL_ALL ;
 int FSTVAL_CARD ;
 int FSTVAL_DEBUG ;
 scalar_t__ FST_FAMILY_TXU ;
 int FST_GEN_HDLC ;
 void* FST_RDB (struct fst_card_info*,int ) ;
 void* FST_RDL (struct fst_card_info*,int ) ;
 void* FST_RDW (struct fst_card_info*,int ) ;
 scalar_t__ FST_RUNNING ;
 scalar_t__ FST_TYPE_TE1 ;
 int LINUX_VERSION_CODE ;
 int cableStatus ;
 int cardMode ;
 int * clockStatus ;
 int fst_debug_mask ;
 int memset (struct fstioc_info*,int ,int) ;
 TYPE_3__* portConfig ;
 int smcFirmwareVersion ;
 TYPE_2__ suConfig ;
 TYPE_1__ suStatus ;
 int * v24IpSts ;
 int * v24OpSts ;

__attribute__((used)) static void
gather_conf_info(struct fst_card_info *card, struct fst_port_info *port,
   struct fstioc_info *info)
{
 int i;

 memset(info, 0, sizeof (struct fstioc_info));

 i = port->index;
 info->kernelVersion = LINUX_VERSION_CODE;
 info->nports = card->nports;
 info->type = card->type;
 info->state = card->state;
 info->proto = FST_GEN_HDLC;
 info->index = i;







 info->valid = ((card->state == FST_RUNNING) ? FSTVAL_ALL : FSTVAL_CARD)



     ;

 info->lineInterface = FST_RDW(card, portConfig[i].lineInterface);
 info->internalClock = FST_RDB(card, portConfig[i].internalClock);
 info->lineSpeed = FST_RDL(card, portConfig[i].lineSpeed);
 info->invertClock = FST_RDB(card, portConfig[i].invertClock);
 info->v24IpSts = FST_RDL(card, v24IpSts[i]);
 info->v24OpSts = FST_RDL(card, v24OpSts[i]);
 info->clockStatus = FST_RDW(card, clockStatus[i]);
 info->cableStatus = FST_RDW(card, cableStatus);
 info->cardMode = FST_RDW(card, cardMode);
 info->smcFirmwareVersion = FST_RDL(card, smcFirmwareVersion);






 if (card->family == FST_FAMILY_TXU) {
  if (port->index == 0) {



   info->cableStatus = info->cableStatus & 1;
  } else {



   info->cableStatus = info->cableStatus >> 1;
   info->cableStatus = info->cableStatus & 1;
  }
 }



 if (card->type == FST_TYPE_TE1) {
  info->lineSpeed = FST_RDL(card, suConfig.dataRate);
  info->clockSource = FST_RDB(card, suConfig.clocking);
  info->framing = FST_RDB(card, suConfig.framing);
  info->structure = FST_RDB(card, suConfig.structure);
  info->interface = FST_RDB(card, suConfig.interface);
  info->coding = FST_RDB(card, suConfig.coding);
  info->lineBuildOut = FST_RDB(card, suConfig.lineBuildOut);
  info->equalizer = FST_RDB(card, suConfig.equalizer);
  info->loopMode = FST_RDB(card, suConfig.loopMode);
  info->range = FST_RDB(card, suConfig.range);
  info->txBufferMode = FST_RDB(card, suConfig.txBufferMode);
  info->rxBufferMode = FST_RDB(card, suConfig.rxBufferMode);
  info->startingSlot = FST_RDB(card, suConfig.startingSlot);
  info->losThreshold = FST_RDB(card, suConfig.losThreshold);
  if (FST_RDB(card, suConfig.enableIdleCode))
   info->idleCode = FST_RDB(card, suConfig.idleCode);
  else
   info->idleCode = 0;
  info->receiveBufferDelay =
      FST_RDL(card, suStatus.receiveBufferDelay);
  info->framingErrorCount =
      FST_RDL(card, suStatus.framingErrorCount);
  info->codeViolationCount =
      FST_RDL(card, suStatus.codeViolationCount);
  info->crcErrorCount = FST_RDL(card, suStatus.crcErrorCount);
  info->lineAttenuation = FST_RDL(card, suStatus.lineAttenuation);
  info->lossOfSignal = FST_RDB(card, suStatus.lossOfSignal);
  info->receiveRemoteAlarm =
      FST_RDB(card, suStatus.receiveRemoteAlarm);
  info->alarmIndicationSignal =
      FST_RDB(card, suStatus.alarmIndicationSignal);
 }
}
