
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int use_len ;
 scalar_t__ use_len_max ;
 scalar_t__ use_offset ;

__attribute__((used)) static void do_vary_offset(void)
{
 use_len -= 1;
 if (use_len < 1) {
  use_offset += 1;
  if (use_offset >= use_len_max)
   use_offset = 0;
  use_len = use_len_max - use_offset;
 }
}
