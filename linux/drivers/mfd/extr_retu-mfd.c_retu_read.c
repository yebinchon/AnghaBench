
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct retu_dev {int mutex; int regmap; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,int*) ;

int retu_read(struct retu_dev *rdev, u8 reg)
{
 int ret;
 int value;

 mutex_lock(&rdev->mutex);
 ret = regmap_read(rdev->regmap, reg, &value);
 mutex_unlock(&rdev->mutex);

 return ret ? ret : value;
}
