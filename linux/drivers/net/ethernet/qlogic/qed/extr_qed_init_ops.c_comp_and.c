
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline bool comp_and(u32 val, u32 expected_val)
{
 return (val & expected_val) == expected_val;
}
