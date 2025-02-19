
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jme_adapter {int reg_rxcs; } ;


 int JME_RXCS ;
 int JME_RX_DISABLE_TIMEOUT ;
 int RXCS_ENABLE ;
 int jme_mac_rxclk_off (struct jme_adapter*) ;
 int jread32 (struct jme_adapter*,int ) ;
 int jwrite32 (struct jme_adapter*,int ,int ) ;
 int mdelay (int) ;
 int pr_err (char*) ;
 int rmb () ;
 int wmb () ;

__attribute__((used)) static inline void
jme_disable_rx_engine(struct jme_adapter *jme)
{
 int i;
 u32 val;




 jwrite32(jme, JME_RXCS, jme->reg_rxcs);
 wmb();

 val = jread32(jme, JME_RXCS);
 for (i = JME_RX_DISABLE_TIMEOUT ; (val & RXCS_ENABLE) && i > 0 ; --i) {
  mdelay(1);
  val = jread32(jme, JME_RXCS);
  rmb();
 }

 if (!i)
  pr_err("Disable RX engine timeout\n");




 jme_mac_rxclk_off(jme);
}
