
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_init_data {int dummy; } ;
struct device {int dummy; } ;


 struct device* add_regulator_linked (int,struct regulator_init_data*,int *,int ,unsigned long) ;

__attribute__((used)) static struct device *
add_regulator(int num, struct regulator_init_data *pdata,
  unsigned long features)
{
 return add_regulator_linked(num, pdata, ((void*)0), 0, features);
}
