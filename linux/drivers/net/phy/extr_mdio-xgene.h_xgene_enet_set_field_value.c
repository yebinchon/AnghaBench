
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;



__attribute__((used)) static inline u64 xgene_enet_set_field_value(int pos, int len, u64 val)
{
 return (val & ((1ULL << len) - 1)) << pos;
}
