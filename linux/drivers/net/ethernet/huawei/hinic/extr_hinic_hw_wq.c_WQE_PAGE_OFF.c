
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hinic_wq {int num_wqebbs_per_page; int wqebb_size_shift; } ;
typedef int idx ;



__attribute__((used)) static inline int WQE_PAGE_OFF(struct hinic_wq *wq, u16 idx)
{
 return (((idx) & ((wq)->num_wqebbs_per_page - 1))
  << (wq)->wqebb_size_shift);
}
