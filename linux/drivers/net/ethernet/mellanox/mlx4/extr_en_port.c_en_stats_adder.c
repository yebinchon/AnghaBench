
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be64 ;


 scalar_t__ be64_to_cpu (int ) ;

__attribute__((used)) static unsigned long en_stats_adder(__be64 *start, __be64 *next, int num)
{
 __be64 *curr = start;
 unsigned long ret = 0;
 int i;
 int offset = next - start;

 for (i = 0; i < num; i++) {
  ret += be64_to_cpu(*curr);
  curr += offset;
 }

 return ret;
}
