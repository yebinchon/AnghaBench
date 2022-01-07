
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_and_set_bit (int,void*) ;

__attribute__((used)) static inline int __trylock_handle(void *h)
{
 return !test_and_set_bit(1, h);
}
