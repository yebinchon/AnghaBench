
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dln2_dev {int dummy; } ;


 int dln2_check_hw (struct dln2_dev*) ;
 int dln2_print_serialno (struct dln2_dev*) ;

__attribute__((used)) static int dln2_hw_init(struct dln2_dev *dln2)
{
 int ret;

 ret = dln2_check_hw(dln2);
 if (ret < 0)
  return ret;

 return dln2_print_serialno(dln2);
}
