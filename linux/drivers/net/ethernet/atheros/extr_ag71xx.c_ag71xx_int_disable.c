
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ag71xx {int dummy; } ;


 int AG71XX_REG_INT_ENABLE ;
 int ag71xx_cb (struct ag71xx*,int ,int ) ;

__attribute__((used)) static void ag71xx_int_disable(struct ag71xx *ag, u32 ints)
{
 ag71xx_cb(ag, AG71XX_REG_INT_ENABLE, ints);
}
