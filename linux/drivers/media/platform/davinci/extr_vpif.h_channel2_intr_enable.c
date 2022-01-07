
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VPIF_INTEN ;
 int VPIF_INTEN_FRAME_CH2 ;
 int VPIF_INTEN_SET ;
 int regr (int ) ;
 int regw (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vpif_lock ;

__attribute__((used)) static inline void channel2_intr_enable(int enable)
{
 unsigned long flags;

 spin_lock_irqsave(&vpif_lock, flags);

 if (enable) {
  regw((regr(VPIF_INTEN) | 0x10), VPIF_INTEN);
  regw((regr(VPIF_INTEN_SET) | 0x10), VPIF_INTEN_SET);
  regw((regr(VPIF_INTEN) | VPIF_INTEN_FRAME_CH2), VPIF_INTEN);
  regw((regr(VPIF_INTEN_SET) | VPIF_INTEN_FRAME_CH2),
       VPIF_INTEN_SET);
 } else {
  regw((regr(VPIF_INTEN) & (~VPIF_INTEN_FRAME_CH2)), VPIF_INTEN);
  regw((regr(VPIF_INTEN_SET) | VPIF_INTEN_FRAME_CH2),
       VPIF_INTEN_SET);
 }
 spin_unlock_irqrestore(&vpif_lock, flags);
}
