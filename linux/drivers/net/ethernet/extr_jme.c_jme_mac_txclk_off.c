
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jme_adapter {int reg_ghc; } ;


 int GHC_TO_CLK_SRC ;
 int GHC_TXMAC_CLK_SRC ;
 int JME_GHC ;
 int jwrite32f (struct jme_adapter*,int ,int) ;

__attribute__((used)) static inline void
jme_mac_txclk_off(struct jme_adapter *jme)
{
 jme->reg_ghc &= ~(GHC_TO_CLK_SRC | GHC_TXMAC_CLK_SRC);
 jwrite32f(jme, JME_GHC, jme->reg_ghc);
}
