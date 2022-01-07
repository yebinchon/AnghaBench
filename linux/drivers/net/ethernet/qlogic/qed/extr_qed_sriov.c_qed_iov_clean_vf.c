
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_public_vf_info {scalar_t__ tx_accept_mode; scalar_t__ rx_accept_mode; int mac; } ;
struct qed_hwfn {int dummy; } ;


 int eth_zero_addr (int ) ;
 struct qed_public_vf_info* qed_iov_get_public_vf_info (struct qed_hwfn*,int ,int) ;

__attribute__((used)) static void qed_iov_clean_vf(struct qed_hwfn *p_hwfn, u8 vfid)
{
 struct qed_public_vf_info *vf_info;

 vf_info = qed_iov_get_public_vf_info(p_hwfn, vfid, 0);

 if (!vf_info)
  return;


 eth_zero_addr(vf_info->mac);

 vf_info->rx_accept_mode = 0;
 vf_info->tx_accept_mode = 0;
}
