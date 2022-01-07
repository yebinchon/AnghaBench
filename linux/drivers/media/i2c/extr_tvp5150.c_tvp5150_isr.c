
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct tvp5150 {int lock; int oe; TYPE_1__ sd; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int TVP5150_INT_ACTIVE_REG_B ;
 unsigned int TVP5150_INT_A_LOCK ;
 unsigned int TVP5150_INT_A_LOCK_STATUS ;
 int TVP5150_INT_RESET_REG_B ;
 int TVP5150_INT_STATUS_REG_A ;
 int TVP5150_INT_STATUS_REG_B ;
 int TVP5150_MISC_CTL ;
 unsigned int TVP5150_MISC_CTL_CLOCK_OE ;
 unsigned int TVP5150_MISC_CTL_SYNC_OE ;
 unsigned int TVP5150_MISC_CTL_YCBCR_OE ;
 int debug ;
 int dev_dbg_lvl (int ,int,int ,char*,char*) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regmap_update_bits (struct regmap*,int ,unsigned int,int ) ;
 int regmap_write (struct regmap*,int ,unsigned int) ;
 int tvp5150_ev_fmt ;
 int v4l2_subdev_notify_event (TYPE_1__*,int *) ;

__attribute__((used)) static irqreturn_t tvp5150_isr(int irq, void *dev_id)
{
 struct tvp5150 *decoder = dev_id;
 struct regmap *map = decoder->regmap;
 unsigned int mask, active = 0, status = 0;

 mask = TVP5150_MISC_CTL_YCBCR_OE | TVP5150_MISC_CTL_SYNC_OE |
        TVP5150_MISC_CTL_CLOCK_OE;

 regmap_read(map, TVP5150_INT_STATUS_REG_A, &status);
 if (status) {
  regmap_write(map, TVP5150_INT_STATUS_REG_A, status);

  if (status & TVP5150_INT_A_LOCK) {
   decoder->lock = !!(status & TVP5150_INT_A_LOCK_STATUS);
   dev_dbg_lvl(decoder->sd.dev, 1, debug,
        "sync lo%s signal\n",
        decoder->lock ? "ck" : "ss");
   v4l2_subdev_notify_event(&decoder->sd, &tvp5150_ev_fmt);
   regmap_update_bits(map, TVP5150_MISC_CTL, mask,
        decoder->lock ? decoder->oe : 0);
  }

  return IRQ_HANDLED;
 }

 regmap_read(map, TVP5150_INT_ACTIVE_REG_B, &active);
 if (active) {
  status = 0;
  regmap_read(map, TVP5150_INT_STATUS_REG_B, &status);
  if (status)
   regmap_write(map, TVP5150_INT_RESET_REG_B, status);
 }

 return IRQ_HANDLED;
}
