
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct qed_hwfn {int dummy; } ;
typedef enum qed_tpa_mode { ____Placeholder_qed_tpa_mode } qed_tpa_mode ;


 int EINVAL ;

__attribute__((used)) static inline int qed_vf_pf_vport_start(struct qed_hwfn *p_hwfn,
     u8 vport_id,
     u16 mtu,
     u8 inner_vlan_removal,
     enum qed_tpa_mode tpa_mode,
     u8 max_buffers_per_cqe,
     u8 only_untagged)
{
 return -EINVAL;
}
