
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct solo_enc_dev {int ch; int motion_lock; struct solo_dev* solo_dev; } ;
struct solo_dev {int motion_mask; } ;


 int SOLO_MOTION_EXT_ADDR (struct solo_dev*) ;
 int SOLO_VI_MOTION_EN (int) ;
 int SOLO_VI_MOT_ADR ;
 int SOLO_VI_MOT_CLEAR ;
 int solo_reg_write (struct solo_dev*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void solo_motion_toggle(struct solo_enc_dev *solo_enc, int on)
{
 struct solo_dev *solo_dev = solo_enc->solo_dev;
 u32 mask = 1 << solo_enc->ch;
 unsigned long flags;

 spin_lock_irqsave(&solo_enc->motion_lock, flags);

 if (on)
  solo_dev->motion_mask |= mask;
 else
  solo_dev->motion_mask &= ~mask;

 solo_reg_write(solo_dev, SOLO_VI_MOT_CLEAR, mask);

 solo_reg_write(solo_dev, SOLO_VI_MOT_ADR,
         SOLO_VI_MOTION_EN(solo_dev->motion_mask) |
         (SOLO_MOTION_EXT_ADDR(solo_dev) >> 16));

 spin_unlock_irqrestore(&solo_enc->motion_lock, flags);
}
