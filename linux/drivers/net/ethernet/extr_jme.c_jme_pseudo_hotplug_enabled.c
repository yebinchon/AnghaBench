
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jme_adapter {int dummy; } ;


 int JME_APMC ;
 int JME_APMC_PSEUDO_HP_EN ;
 int jread32 (struct jme_adapter*,int ) ;

__attribute__((used)) static inline int
jme_pseudo_hotplug_enabled(struct jme_adapter *jme)
{
 u32 apmc;
 apmc = jread32(jme, JME_APMC);
 return apmc & JME_APMC_PSEUDO_HP_EN;
}
