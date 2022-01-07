
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jme_adapter {int reg_rxcs; int rx_ring_size; int dev; TYPE_1__* rxring; } ;
typedef int __u64 ;
struct TYPE_2__ {scalar_t__ dma; } ;


 int JME_RXCS ;
 int JME_RXDBA_HI ;
 int JME_RXDBA_LO ;
 int JME_RXNDA ;
 int JME_RXQDC ;
 int RXCS_ENABLE ;
 int RXCS_QST ;
 int RXCS_QUEUESEL_Q0 ;
 int jme_mac_rxclk_on (struct jme_adapter*) ;
 int jme_set_multi (int ) ;
 int jme_set_unicastaddr (int ) ;
 int jwrite32 (struct jme_adapter*,int ,int) ;
 int jwrite32f (struct jme_adapter*,int ,int) ;
 int wmb () ;

__attribute__((used)) static inline void
jme_enable_rx_engine(struct jme_adapter *jme)
{



 jwrite32(jme, JME_RXCS, jme->reg_rxcs |
    RXCS_QUEUESEL_Q0);
 wmb();




 jwrite32(jme, JME_RXDBA_LO, (__u64)(jme->rxring[0].dma) & 0xFFFFFFFFUL);
 jwrite32(jme, JME_RXDBA_HI, (__u64)(jme->rxring[0].dma) >> 32);
 jwrite32(jme, JME_RXNDA, (__u64)(jme->rxring[0].dma) & 0xFFFFFFFFUL);




 jwrite32(jme, JME_RXQDC, jme->rx_ring_size);




 jme_set_unicastaddr(jme->dev);
 jme_set_multi(jme->dev);




 wmb();
 jwrite32f(jme, JME_RXCS, jme->reg_rxcs |
    RXCS_QUEUESEL_Q0 |
    RXCS_ENABLE |
    RXCS_QST);




 jme_mac_rxclk_on(jme);
}
