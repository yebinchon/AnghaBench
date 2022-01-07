
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_rspq {int gen; } ;
struct rsp_ctrl {int type_gen; } ;


 int RSPD_GEN_S ;

__attribute__((used)) static inline bool is_new_response(const struct rsp_ctrl *rc,
       const struct sge_rspq *rspq)
{
 return ((rc->type_gen >> RSPD_GEN_S) & 0x1) == rspq->gen;
}
