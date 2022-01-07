
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int offset; } ;
struct qed_ptt {TYPE_1__ pxp; } ;
struct qed_hwfn {int dummy; } ;


 int le32_to_cpu (int ) ;

u32 qed_ptt_get_hw_addr(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{

 return le32_to_cpu(p_ptt->pxp.offset) << 2;
}
