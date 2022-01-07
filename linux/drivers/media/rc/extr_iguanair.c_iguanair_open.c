
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct iguanair* priv; } ;
struct iguanair {int receiver_on; int lock; } ;


 int iguanair_receiver (struct iguanair*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iguanair_open(struct rc_dev *rdev)
{
 struct iguanair *ir = rdev->priv;
 int rc;

 mutex_lock(&ir->lock);

 rc = iguanair_receiver(ir, 1);
 if (rc == 0)
  ir->receiver_on = 1;

 mutex_unlock(&ir->lock);

 return rc;
}
