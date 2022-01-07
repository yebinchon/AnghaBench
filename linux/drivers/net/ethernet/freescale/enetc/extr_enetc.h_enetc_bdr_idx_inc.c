
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_bdr {int bd_count; } ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void enetc_bdr_idx_inc(struct enetc_bdr *bdr, int *i)
{
 if (unlikely(++*i == bdr->bd_count))
  *i = 0;
}
