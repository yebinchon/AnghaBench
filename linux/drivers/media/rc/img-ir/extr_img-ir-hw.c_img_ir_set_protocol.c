
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct rc_dev {int lock; void* allowed_wakeup_protocols; void* enabled_protocols; } ;
struct TYPE_2__ {struct rc_dev* rdev; } ;
struct img_ir_priv {TYPE_1__ hw; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void img_ir_set_protocol(struct img_ir_priv *priv, u64 proto)
{
 struct rc_dev *rdev = priv->hw.rdev;

 mutex_lock(&rdev->lock);
 rdev->enabled_protocols = proto;
 rdev->allowed_wakeup_protocols = proto;
 mutex_unlock(&rdev->lock);
}
