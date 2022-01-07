
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jme_adapter {int reg_ghc; } ;


 int GHC_SWRST ;
 int JME_GHC ;
 int jwrite32f (struct jme_adapter*,int ,int ) ;

__attribute__((used)) static inline void
jme_clear_ghc_reset(struct jme_adapter *jme)
{
 jme->reg_ghc &= ~GHC_SWRST;
 jwrite32f(jme, JME_GHC, jme->reg_ghc);
}
