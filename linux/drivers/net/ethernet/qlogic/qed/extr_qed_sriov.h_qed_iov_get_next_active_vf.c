
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qed_hwfn {int dummy; } ;


 int MAX_NUM_VFS ;

__attribute__((used)) static inline u16 qed_iov_get_next_active_vf(struct qed_hwfn *p_hwfn,
          u16 rel_vf_id)
{
 return MAX_NUM_VFS;
}
