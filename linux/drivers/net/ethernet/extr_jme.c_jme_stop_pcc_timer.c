
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jme_adapter {int dummy; } ;


 int JME_TMCSR ;
 int jwrite32 (struct jme_adapter*,int ,int ) ;

__attribute__((used)) static inline void
jme_stop_pcc_timer(struct jme_adapter *jme)
{
 jwrite32(jme, JME_TMCSR, 0);
}
