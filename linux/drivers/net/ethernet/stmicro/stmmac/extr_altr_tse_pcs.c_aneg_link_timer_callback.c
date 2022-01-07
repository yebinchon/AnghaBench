
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tse_pcs {scalar_t__ autoneg; } ;
struct timer_list {int dummy; } ;


 scalar_t__ AUTONEG_DISABLE ;
 scalar_t__ AUTONEG_ENABLE ;
 int aneg_link_timer ;
 int auto_nego_timer_callback (struct tse_pcs*) ;
 struct tse_pcs* from_timer (int ,struct timer_list*,int ) ;
 struct tse_pcs* pcs ;
 int pcs_link_timer_callback (struct tse_pcs*) ;

__attribute__((used)) static void aneg_link_timer_callback(struct timer_list *t)
{
 struct tse_pcs *pcs = from_timer(pcs, t, aneg_link_timer);

 if (pcs->autoneg == AUTONEG_ENABLE)
  auto_nego_timer_callback(pcs);
 else if (pcs->autoneg == AUTONEG_DISABLE)
  pcs_link_timer_callback(pcs);
}
