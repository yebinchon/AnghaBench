
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jme_adapter {int flags; } ;


 int APMC_PHP_SHUTDOWN_DELAY ;
 int JME_APMC ;
 int JME_APMC_EPIEN_CTRL ;
 int JME_APMC_EPIEN_CTRL_EN ;
 int JME_APMC_PCIE_SD_EN ;
 int JME_FLAG_SHUTDOWN ;
 int JME_TIMER2 ;
 int JME_TMCSR ;
 int TMCSR_CNT ;
 int TMCSR_EN ;
 int jread32 (struct jme_adapter*,int ) ;
 int jwrite32 (struct jme_adapter*,int ,int) ;
 int jwrite32f (struct jme_adapter*,int ,int) ;
 int no_extplug ;
 int set_bit (int ,int *) ;
 int wmb () ;

__attribute__((used)) static void
jme_start_shutdown_timer(struct jme_adapter *jme)
{
 u32 apmc;

 apmc = jread32(jme, JME_APMC) | JME_APMC_PCIE_SD_EN;
 apmc &= ~JME_APMC_EPIEN_CTRL;
 if (!no_extplug) {
  jwrite32f(jme, JME_APMC, apmc | JME_APMC_EPIEN_CTRL_EN);
  wmb();
 }
 jwrite32f(jme, JME_APMC, apmc);

 jwrite32f(jme, JME_TIMER2, 0);
 set_bit(JME_FLAG_SHUTDOWN, &jme->flags);
 jwrite32(jme, JME_TMCSR,
  TMCSR_EN | ((0xFFFFFF - APMC_PHP_SHUTDOWN_DELAY) & TMCSR_CNT));
}
