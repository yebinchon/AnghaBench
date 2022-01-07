
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tg3_hw_status {int status; } ;
struct tg3 {int lock; TYPE_1__* napi; } ;
struct TYPE_2__ {struct tg3_hw_status* hw_status; } ;


 int MAC_STATUS ;
 int MAC_STATUS_CFG_CHANGED ;
 int MAC_STATUS_LNKSTATE_CHANGED ;
 int MAC_STATUS_MI_COMPLETION ;
 int MAC_STATUS_SYNC_CHANGED ;
 int POLL_SERDES ;
 int SD_STATUS_LINK_CHG ;
 int SD_STATUS_UPDATED ;
 int USE_LINKCHG_REG ;
 int USE_PHYLIB ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tg3_setup_phy (struct tg3*,int) ;
 int tw32_f (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void tg3_poll_link(struct tg3 *tp)
{

 if (!(tg3_flag(tp, USE_LINKCHG_REG) || tg3_flag(tp, POLL_SERDES))) {
  struct tg3_hw_status *sblk = tp->napi[0].hw_status;

  if (sblk->status & SD_STATUS_LINK_CHG) {
   sblk->status = SD_STATUS_UPDATED |
           (sblk->status & ~SD_STATUS_LINK_CHG);
   spin_lock(&tp->lock);
   if (tg3_flag(tp, USE_PHYLIB)) {
    tw32_f(MAC_STATUS,
         (MAC_STATUS_SYNC_CHANGED |
          MAC_STATUS_CFG_CHANGED |
          MAC_STATUS_MI_COMPLETION |
          MAC_STATUS_LNKSTATE_CHANGED));
    udelay(40);
   } else
    tg3_setup_phy(tp, 0);
   spin_unlock(&tp->lock);
  }
 }
}
