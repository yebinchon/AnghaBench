
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int DBG_REG_CLIENT_ENABLE ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int ) ;

__attribute__((used)) static void qed_bus_enable_clients(struct qed_hwfn *p_hwfn,
       struct qed_ptt *p_ptt, u32 client_mask)
{
 qed_wr(p_hwfn, p_ptt, DBG_REG_CLIENT_ENABLE, client_mask);
}
