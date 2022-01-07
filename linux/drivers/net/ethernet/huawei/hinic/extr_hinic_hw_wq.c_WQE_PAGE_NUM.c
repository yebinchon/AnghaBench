
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hinic_wq {int wqebbs_per_page_shift; int num_q_pages; } ;



__attribute__((used)) static inline int WQE_PAGE_NUM(struct hinic_wq *wq, u16 idx)
{
 return (((idx) >> ((wq)->wqebbs_per_page_shift))
  & ((wq)->num_q_pages - 1));
}
