
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 word_sum(void *words, int num)
{
 u32 *p = words;
 u32 sum = 0;

 while (num--)
  sum += *p++;

 return sum;
}
