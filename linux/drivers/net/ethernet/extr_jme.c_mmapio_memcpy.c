
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct jme_adapter {int dummy; } ;


 scalar_t__ jread32 (struct jme_adapter*,scalar_t__) ;

__attribute__((used)) static void
mmapio_memcpy(struct jme_adapter *jme, u32 *p, u32 reg, int len)
{
 int i;

 for (i = 0 ; i < len ; i += 4)
  p[i >> 2] = jread32(jme, reg + i);
}
