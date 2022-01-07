
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jme_adapter {int reg_pmcs; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int PMCS_LFEN ;
 int PMCS_LREN ;
 scalar_t__ device_may_wakeup (int *) ;
 int jme_clear_pm_enable_wol (struct jme_adapter*) ;
 int jme_phy_off (struct jme_adapter*) ;
 int jme_set_100m_half (struct jme_adapter*) ;
 int jme_wait_link (struct jme_adapter*) ;

__attribute__((used)) static void
jme_powersave_phy(struct jme_adapter *jme)
{
 if (jme->reg_pmcs && device_may_wakeup(&jme->pdev->dev)) {
  jme_set_100m_half(jme);
  if (jme->reg_pmcs & (PMCS_LFEN | PMCS_LREN))
   jme_wait_link(jme);
  jme_clear_pm_enable_wol(jme);
 } else {
  jme_phy_off(jme);
 }
}
