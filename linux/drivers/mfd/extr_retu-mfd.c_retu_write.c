
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct retu_dev {int mutex; int regmap; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_write (int ,int ,int ) ;

int retu_write(struct retu_dev *rdev, u8 reg, u16 data)
{
 int ret;

 mutex_lock(&rdev->mutex);
 ret = regmap_write(rdev->regmap, reg, data);
 mutex_unlock(&rdev->mutex);

 return ret;
}
