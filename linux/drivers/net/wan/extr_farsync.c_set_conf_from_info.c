
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fstioc_info {int valid; scalar_t__ proto; int invertClock; unsigned char lineSpeed; int clockSource; scalar_t__ framing; int structure; int interface; int coding; int lineBuildOut; int equalizer; int transparentMode; int loopMode; int range; int txBufferMode; int rxBufferMode; int startingSlot; int losThreshold; char idleCode; int debug; int cardMode; } ;
struct fst_port_info {size_t index; scalar_t__ mode; } ;
struct fst_card_info {int dummy; } ;
struct TYPE_4__ {int invertClock; } ;
struct TYPE_3__ {int idleCode; int enableIdleCode; int losThreshold; int startingSlot; int rxBufferMode; int txBufferMode; int range; int loopMode; int transparentMode; int equalizer; int lineBuildOut; int coding; int interface; int structure; int framing; int clocking; int dataRate; } ;


 scalar_t__ E1 ;
 int EINVAL ;
 unsigned char FRAMING_E1 ;
 unsigned char FRAMING_J1 ;
 unsigned char FRAMING_T1 ;
 int FSTVAL_CABLE ;
 int FSTVAL_DEBUG ;
 int FSTVAL_MODE ;
 int FSTVAL_PHASE ;
 int FSTVAL_PROTO ;
 int FSTVAL_SPEED ;
 int FSTVAL_TE1 ;
 scalar_t__ FST_GEN_HDLC ;
 scalar_t__ FST_RAW ;
 int FST_WRB (struct fst_card_info*,int ,int) ;
 int FST_WRL (struct fst_card_info*,int ,unsigned char) ;
 int FST_WRW (struct fst_card_info*,int ,int ) ;
 scalar_t__ J1 ;
 scalar_t__ T1 ;
 int cardMode ;
 int fst_debug_mask ;
 TYPE_2__* portConfig ;
 int printk (char*,...) ;
 TYPE_1__ suConfig ;

__attribute__((used)) static int
set_conf_from_info(struct fst_card_info *card, struct fst_port_info *port,
     struct fstioc_info *info)
{
 int err;
 unsigned char my_framing;





 err = 0;
 if (info->valid & FSTVAL_PROTO) {
  if (info->proto == FST_RAW)
   port->mode = FST_RAW;
  else
   port->mode = FST_GEN_HDLC;
 }

 if (info->valid & FSTVAL_CABLE)
  err = -EINVAL;

 if (info->valid & FSTVAL_SPEED)
  err = -EINVAL;

 if (info->valid & FSTVAL_PHASE)
  FST_WRB(card, portConfig[port->index].invertClock,
   info->invertClock);
 if (info->valid & FSTVAL_MODE)
  FST_WRW(card, cardMode, info->cardMode);
 if (info->valid & FSTVAL_TE1) {
  FST_WRL(card, suConfig.dataRate, info->lineSpeed);
  FST_WRB(card, suConfig.clocking, info->clockSource);
  my_framing = FRAMING_E1;
  if (info->framing == E1)
   my_framing = FRAMING_E1;
  if (info->framing == T1)
   my_framing = FRAMING_T1;
  if (info->framing == J1)
   my_framing = FRAMING_J1;
  FST_WRB(card, suConfig.framing, my_framing);
  FST_WRB(card, suConfig.structure, info->structure);
  FST_WRB(card, suConfig.interface, info->interface);
  FST_WRB(card, suConfig.coding, info->coding);
  FST_WRB(card, suConfig.lineBuildOut, info->lineBuildOut);
  FST_WRB(card, suConfig.equalizer, info->equalizer);
  FST_WRB(card, suConfig.transparentMode, info->transparentMode);
  FST_WRB(card, suConfig.loopMode, info->loopMode);
  FST_WRB(card, suConfig.range, info->range);
  FST_WRB(card, suConfig.txBufferMode, info->txBufferMode);
  FST_WRB(card, suConfig.rxBufferMode, info->rxBufferMode);
  FST_WRB(card, suConfig.startingSlot, info->startingSlot);
  FST_WRB(card, suConfig.losThreshold, info->losThreshold);
  if (info->idleCode)
   FST_WRB(card, suConfig.enableIdleCode, 1);
  else
   FST_WRB(card, suConfig.enableIdleCode, 0);
  FST_WRB(card, suConfig.idleCode, info->idleCode);
 }






 return err;
}
