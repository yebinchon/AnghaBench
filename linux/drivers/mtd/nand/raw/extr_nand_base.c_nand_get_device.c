
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_chip {TYPE_1__* controller; int lock; scalar_t__ suspended; } ;
struct TYPE_2__ {int lock; } ;


 int EBUSY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int nand_get_device(struct nand_chip *chip)
{
 mutex_lock(&chip->lock);
 if (chip->suspended) {
  mutex_unlock(&chip->lock);
  return -EBUSY;
 }
 mutex_lock(&chip->controller->lock);

 return 0;
}
