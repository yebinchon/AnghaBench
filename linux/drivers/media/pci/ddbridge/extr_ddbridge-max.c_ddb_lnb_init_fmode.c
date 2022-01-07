
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int fmode; int lock; } ;
struct ddb_link {int nr; TYPE_1__ lnb; } ;
struct ddb {int dev; } ;


 int SEC_TONE_OFF ;
 int SEC_TONE_ON ;
 int dev_info (int ,char*,int,int) ;
 scalar_t__ fmode_sat ;
 int lnb_set_sat (struct ddb*,int,int,scalar_t__,int,int) ;
 int lnb_set_tone (struct ddb*,int,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ old_quattro ;

int ddb_lnb_init_fmode(struct ddb *dev, struct ddb_link *link, u32 fm)
{
 u32 l = link->nr;

 if (link->lnb.fmode == fm)
  return 0;
 dev_info(dev->dev, "Set fmode link %u = %u\n", l, fm);
 mutex_lock(&link->lnb.lock);
 if (fm == 2 || fm == 1) {
  if (fmode_sat >= 0) {
   lnb_set_sat(dev, l, 0, fmode_sat, 0, 0);
   if (old_quattro) {
    lnb_set_sat(dev, l, 1, fmode_sat, 0, 1);
    lnb_set_sat(dev, l, 2, fmode_sat, 1, 0);
   } else {
    lnb_set_sat(dev, l, 1, fmode_sat, 1, 0);
    lnb_set_sat(dev, l, 2, fmode_sat, 0, 1);
   }
   lnb_set_sat(dev, l, 3, fmode_sat, 1, 1);
  }
  lnb_set_tone(dev, l, 0, SEC_TONE_OFF);
  if (old_quattro) {
   lnb_set_tone(dev, l, 1, SEC_TONE_OFF);
   lnb_set_tone(dev, l, 2, SEC_TONE_ON);
  } else {
   lnb_set_tone(dev, l, 1, SEC_TONE_ON);
   lnb_set_tone(dev, l, 2, SEC_TONE_OFF);
  }
  lnb_set_tone(dev, l, 3, SEC_TONE_ON);
 }
 link->lnb.fmode = fm;
 mutex_unlock(&link->lnb.lock);
 return 0;
}
