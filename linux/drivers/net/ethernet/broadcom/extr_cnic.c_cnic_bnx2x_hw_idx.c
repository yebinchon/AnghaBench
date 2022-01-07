
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int MAX_KCQE_CNT ;

__attribute__((used)) static u16 cnic_bnx2x_hw_idx(u16 idx)
{
 if ((idx & MAX_KCQE_CNT) == MAX_KCQE_CNT)
  idx++;
 return idx;
}
