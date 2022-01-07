
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 rs_search_tbl(u8 active_tbl)
{
 return (active_tbl ^ 1) & 1;
}
