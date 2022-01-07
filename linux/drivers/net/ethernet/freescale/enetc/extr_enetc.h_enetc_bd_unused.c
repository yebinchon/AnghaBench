
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_bdr {scalar_t__ next_to_clean; scalar_t__ next_to_use; int bd_count; } ;



__attribute__((used)) static inline int enetc_bd_unused(struct enetc_bdr *bdr)
{
 if (bdr->next_to_clean > bdr->next_to_use)
  return bdr->next_to_clean - bdr->next_to_use - 1;

 return bdr->bd_count + bdr->next_to_clean - bdr->next_to_use - 1;
}
