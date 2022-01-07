
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct solo_enc_dev {int ch; int motion_lock; struct solo_dev* solo_dev; } ;
struct solo_dev {int dummy; } ;


 int SOLO_VI_MOT_CLEAR ;
 int SOLO_VI_MOT_STATUS ;
 int solo_reg_read (struct solo_dev*,int ) ;
 int solo_reg_write (struct solo_dev*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int solo_motion_detected(struct solo_enc_dev *solo_enc)
{
 struct solo_dev *solo_dev = solo_enc->solo_dev;
 unsigned long flags;
 u32 ch_mask = 1 << solo_enc->ch;
 int ret = 0;

 spin_lock_irqsave(&solo_enc->motion_lock, flags);
 if (solo_reg_read(solo_dev, SOLO_VI_MOT_STATUS) & ch_mask) {
  solo_reg_write(solo_dev, SOLO_VI_MOT_CLEAR, ch_mask);
  ret = 1;
 }
 spin_unlock_irqrestore(&solo_enc->motion_lock, flags);

 return ret;
}
