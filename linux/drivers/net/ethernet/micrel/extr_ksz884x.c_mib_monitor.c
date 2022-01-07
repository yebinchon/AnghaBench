
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct dev_info {int mib_timer_info; scalar_t__ pme_wait; int hw; int mib_read; } ;
struct TYPE_2__ {int timer; } ;


 int HZ ;
 struct dev_info* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ hw_chk_wol_pme_status (int *) ;
 int hw_clr_wol_pme_status (int *) ;
 struct dev_info* hw_priv ;
 scalar_t__ jiffies ;
 int ksz_update_timer (int *) ;
 int mib_read_work (int *) ;
 TYPE_1__ mib_timer_info ;
 scalar_t__ time_is_before_eq_jiffies (scalar_t__) ;

__attribute__((used)) static void mib_monitor(struct timer_list *t)
{
 struct dev_info *hw_priv = from_timer(hw_priv, t, mib_timer_info.timer);

 mib_read_work(&hw_priv->mib_read);


 if (hw_priv->pme_wait) {
  if (time_is_before_eq_jiffies(hw_priv->pme_wait)) {
   hw_clr_wol_pme_status(&hw_priv->hw);
   hw_priv->pme_wait = 0;
  }
 } else if (hw_chk_wol_pme_status(&hw_priv->hw)) {


  hw_priv->pme_wait = jiffies + HZ * 2;
 }

 ksz_update_timer(&hw_priv->mib_timer_info);
}
