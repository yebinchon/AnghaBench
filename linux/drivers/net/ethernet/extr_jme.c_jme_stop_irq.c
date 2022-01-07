
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jme_adapter {int dummy; } ;


 int INTR_ENABLE ;
 int JME_IENC ;
 int jwrite32f (struct jme_adapter*,int ,int ) ;

__attribute__((used)) static inline void
jme_stop_irq(struct jme_adapter *jme)
{



 jwrite32f(jme, JME_IENC, INTR_ENABLE);
}
