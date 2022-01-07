
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_ll2_info {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 struct qed_ll2_info* __qed_ll2_handle_sanity (struct qed_hwfn*,int ,int,int) ;

__attribute__((used)) static struct qed_ll2_info *qed_ll2_handle_sanity_lock(struct qed_hwfn *p_hwfn,
             u8 connection_handle)
{
 return __qed_ll2_handle_sanity(p_hwfn, connection_handle, 1, 1);
}
