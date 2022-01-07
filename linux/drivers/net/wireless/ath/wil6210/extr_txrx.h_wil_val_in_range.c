
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool wil_val_in_range(int val, int min, int max)
{
 return val >= min && val < max;
}
