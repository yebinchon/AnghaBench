
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jme_adapter {int dummy; } ;


 int JME_PMCS ;
 int PMCS_STMASK ;
 int jwrite32 (struct jme_adapter*,int ,int ) ;

__attribute__((used)) static inline void
jme_clear_pm_disable_wol(struct jme_adapter *jme)
{
 jwrite32(jme, JME_PMCS, PMCS_STMASK);
}
