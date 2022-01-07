
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ite_dev {int dummy; } ;


 int IT8709_MODE ;
 int IT8709_READ ;
 int IT8709_REG_IDX ;
 int IT8709_REG_VAL ;
 int it8709_rm (struct ite_dev*,int ) ;
 int it8709_wait (struct ite_dev*) ;
 int it8709_wm (struct ite_dev*,int,int ) ;

__attribute__((used)) static u8 it8709_rr(struct ite_dev *dev, int index)
{

 it8709_wait(dev);
 it8709_wm(dev, index, IT8709_REG_IDX);
 it8709_wm(dev, IT8709_READ, IT8709_MODE);


 it8709_wait(dev);


 return it8709_rm(dev, IT8709_REG_VAL);
}
