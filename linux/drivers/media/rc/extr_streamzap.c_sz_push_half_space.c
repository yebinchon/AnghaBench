
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct streamzap_ir {int dummy; } ;


 unsigned long SZ_SPACE_MASK ;
 int sz_push_full_space (struct streamzap_ir*,unsigned long) ;

__attribute__((used)) static void sz_push_half_space(struct streamzap_ir *sz,
          unsigned long value)
{
 sz_push_full_space(sz, value & SZ_SPACE_MASK);
}
