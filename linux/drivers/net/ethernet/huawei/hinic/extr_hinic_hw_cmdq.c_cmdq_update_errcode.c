
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct hinic_cmdq {int** errcode; } ;



__attribute__((used)) static void cmdq_update_errcode(struct hinic_cmdq *cmdq, u16 prod_idx,
    int errcode)
{
 if (cmdq->errcode[prod_idx])
  *cmdq->errcode[prod_idx] = errcode;
}
