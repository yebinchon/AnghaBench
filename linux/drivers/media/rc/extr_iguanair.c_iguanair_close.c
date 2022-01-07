
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct iguanair* priv; } ;
struct iguanair {int receiver_on; int lock; int dev; } ;


 int ENODEV ;
 int dev_warn (int ,char*,int) ;
 int iguanair_receiver (struct iguanair*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iguanair_close(struct rc_dev *rdev)
{
 struct iguanair *ir = rdev->priv;
 int rc;

 mutex_lock(&ir->lock);

 rc = iguanair_receiver(ir, 0);
 ir->receiver_on = 0;
 if (rc && rc != -ENODEV)
  dev_warn(ir->dev, "failed to disable receiver: %d\n", rc);

 mutex_unlock(&ir->lock);
}
