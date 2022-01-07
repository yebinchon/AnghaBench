
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spinlock_t ;


 int spin_unlock (int *) ;

__attribute__((used)) static void sta2x11_regmap_unlock(void *__lock)
{
 spinlock_t *lock = __lock;
 spin_unlock(lock);
}
