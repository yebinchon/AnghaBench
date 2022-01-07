
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;



__attribute__((used)) static u32 __pos_inc(u32 pos, size_t limit)
{
 return ++pos == limit ? 0 : pos;
}
