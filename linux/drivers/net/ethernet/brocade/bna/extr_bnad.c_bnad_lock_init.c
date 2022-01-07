
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad {int conf_mutex; int bna_lock; } ;


 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void
bnad_lock_init(struct bnad *bnad)
{
 spin_lock_init(&bnad->bna_lock);
 mutex_init(&bnad->conf_mutex);
}
