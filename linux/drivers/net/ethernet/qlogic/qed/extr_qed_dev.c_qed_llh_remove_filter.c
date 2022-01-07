
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_ptt {int dummy; } ;
struct qed_llh_filter_details {int member_0; } ;
struct qed_hwfn {int dummy; } ;


 int qed_llh_access_filter (struct qed_hwfn*,struct qed_ptt*,int ,int ,struct qed_llh_filter_details*) ;

__attribute__((used)) static int
qed_llh_remove_filter(struct qed_hwfn *p_hwfn,
        struct qed_ptt *p_ptt, u8 abs_ppfid, u8 filter_idx)
{
 struct qed_llh_filter_details filter_details = {0};

 return qed_llh_access_filter(p_hwfn, p_ptt, abs_ppfid, filter_idx,
         &filter_details);
}
