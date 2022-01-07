
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cnic_local {int max_kwq_idx; int kwq_prod_idx; int kwq_con_idx; } ;



__attribute__((used)) static inline u32 cnic_kwq_avail(struct cnic_local *cp)
{
 return cp->max_kwq_idx -
  ((cp->kwq_prod_idx - cp->kwq_con_idx) & cp->max_kwq_idx);
}
