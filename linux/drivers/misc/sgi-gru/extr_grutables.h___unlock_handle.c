
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_bit (int,void*) ;

__attribute__((used)) static inline void __unlock_handle(void *h)
{
 clear_bit(1, h);
}
