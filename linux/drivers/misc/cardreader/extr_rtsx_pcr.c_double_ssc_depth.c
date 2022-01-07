
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 double_ssc_depth(u8 depth)
{
 return ((depth > 1) ? (depth - 1) : depth);
}
