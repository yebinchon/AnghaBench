
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jme_adapter {int dummy; } ;


 int JME_TIMER2 ;
 int PHY_LINK_UP ;
 int TMCSR_EN ;
 int jme_linkstat_from_phy (struct jme_adapter*) ;
 int jme_stop_irq (struct jme_adapter*) ;
 int jwrite32 (struct jme_adapter*,int ,int) ;

__attribute__((used)) static void
jme_shutdown_nic(struct jme_adapter *jme)
{
 u32 phylink;

 phylink = jme_linkstat_from_phy(jme);

 if (!(phylink & PHY_LINK_UP)) {



  jme_stop_irq(jme);
  jwrite32(jme, JME_TIMER2, TMCSR_EN | 0xFFFFFE);
 }
}
