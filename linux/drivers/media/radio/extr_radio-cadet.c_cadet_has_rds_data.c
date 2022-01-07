
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cadet {scalar_t__ rdsin; scalar_t__ rdsout; int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static bool cadet_has_rds_data(struct cadet *dev)
{
 bool result;

 mutex_lock(&dev->lock);
 result = dev->rdsin != dev->rdsout;
 mutex_unlock(&dev->lock);
 return result;
}
