
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43_wldev {TYPE_1__* key; } ;
struct TYPE_2__ {int * keyconf; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int B43_SEC_ALGO_NONE ;
 int B43_SEC_KEYSIZE ;
 scalar_t__ B43_WARN_ON (int) ;
 int EINVAL ;
 int b43_new_kidx_api (struct b43_wldev*) ;
 int do_key_write (struct b43_wldev*,int,int ,int *,int ,int *) ;

__attribute__((used)) static int b43_key_clear(struct b43_wldev *dev, int index)
{
 if (B43_WARN_ON((index < 0) || (index >= ARRAY_SIZE(dev->key))))
  return -EINVAL;
 do_key_write(dev, index, B43_SEC_ALGO_NONE,
       ((void*)0), B43_SEC_KEYSIZE, ((void*)0));
 if ((index <= 3) && !b43_new_kidx_api(dev)) {
  do_key_write(dev, index + 4, B43_SEC_ALGO_NONE,
        ((void*)0), B43_SEC_KEYSIZE, ((void*)0));
 }
 dev->key[index].keyconf = ((void*)0);

 return 0;
}
