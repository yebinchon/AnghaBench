
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct qed_vf_info {scalar_t__ num_txqs; } ;
struct qed_hwfn {int dummy; } ;


 int QED_IOV_VALIDATE_Q_ENABLE ;
 scalar_t__ qed_iov_validate_queue_mode (struct qed_hwfn*,struct qed_vf_info*,scalar_t__,int ,int) ;

__attribute__((used)) static bool qed_iov_validate_active_txq(struct qed_hwfn *p_hwfn,
     struct qed_vf_info *p_vf)
{
 u8 i;

 for (i = 0; i < p_vf->num_txqs; i++)
  if (qed_iov_validate_queue_mode(p_hwfn, p_vf, i,
      QED_IOV_VALIDATE_Q_ENABLE,
      1))
   return 1;

 return 0;
}
