
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_public_vf_info {int forced_mac; int mac; scalar_t__ is_trusted_configured; } ;
struct qed_hwfn {int dummy; } ;


 int qed_iov_bulletin_set_forced_mac (struct qed_hwfn*,int ,int) ;
 int qed_iov_bulletin_set_mac (struct qed_hwfn*,int ,int) ;

__attribute__((used)) static void qed_set_bulletin_mac(struct qed_hwfn *hwfn,
     struct qed_public_vf_info *info,
     int vfid)
{
 if (info->is_trusted_configured)
  qed_iov_bulletin_set_mac(hwfn, info->mac, vfid);
 else
  qed_iov_bulletin_set_forced_mac(hwfn, info->forced_mac, vfid);
}
