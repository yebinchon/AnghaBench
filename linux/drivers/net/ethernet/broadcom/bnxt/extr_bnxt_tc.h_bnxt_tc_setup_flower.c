
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct flow_cls_offload {int dummy; } ;
struct bnxt {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int bnxt_tc_setup_flower(struct bnxt *bp, u16 src_fid,
           struct flow_cls_offload *cls_flower)
{
 return -EOPNOTSUPP;
}
