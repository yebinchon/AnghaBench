
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jme_adapter {int reg_gpreg1; } ;


 int GPREG1_HALFMODEPATCH ;
 int GPREG1_RSSPATCH ;
 int JME_GPREG1 ;
 int jwrite32 (struct jme_adapter*,int ,int) ;

__attribute__((used)) static inline void
jme_reset_250A2_workaround(struct jme_adapter *jme)
{
 jme->reg_gpreg1 &= ~(GPREG1_HALFMODEPATCH |
        GPREG1_RSSPATCH);
 jwrite32(jme, JME_GPREG1, jme->reg_gpreg1);
}
