
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_chip {int lock; TYPE_1__* controller; } ;
struct TYPE_2__ {int lock; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static void nand_release_device(struct nand_chip *chip)
{

 mutex_unlock(&chip->controller->lock);
 mutex_unlock(&chip->lock);
}
