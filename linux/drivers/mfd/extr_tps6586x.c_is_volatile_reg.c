
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int TPS6586X_INT_MASK1 ;
 unsigned int TPS6586X_INT_MASK5 ;

__attribute__((used)) static bool is_volatile_reg(struct device *dev, unsigned int reg)
{

 if ((reg >= TPS6586X_INT_MASK1) && (reg <= TPS6586X_INT_MASK5))
  return 0;

 return 1;
}
