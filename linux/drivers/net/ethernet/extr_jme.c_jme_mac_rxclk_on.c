
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jme_adapter {int reg_gpreg1; } ;


 int GPREG1_RXCLKOFF ;
 int JME_GPREG1 ;
 int jwrite32f (struct jme_adapter*,int ,int ) ;

__attribute__((used)) static inline void
jme_mac_rxclk_on(struct jme_adapter *jme)
{
 jme->reg_gpreg1 &= ~GPREG1_RXCLKOFF;
 jwrite32f(jme, JME_GPREG1, jme->reg_gpreg1);
}
