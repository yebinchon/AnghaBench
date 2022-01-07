
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rc_dev {int lock; int enabled_protocols; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ir_raw_disable_protocols(struct rc_dev *dev, u64 protocols)
{
 mutex_lock(&dev->lock);
 dev->enabled_protocols &= ~protocols;
 mutex_unlock(&dev->lock);
}
