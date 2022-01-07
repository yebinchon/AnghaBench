
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_public_vf_info {int forced_mac; int mac; scalar_t__ is_trusted_configured; } ;
struct qed_hwfn {int dummy; } ;


 int ether_addr_equal (int *,int ) ;
 scalar_t__ is_valid_ether_addr (int ) ;

__attribute__((used)) static bool qed_pf_validate_req_vf_mac(struct qed_hwfn *hwfn,
           u8 *mac,
           struct qed_public_vf_info *info)
{
 if (info->is_trusted_configured) {
  if (is_valid_ether_addr(info->mac) &&
      (!mac || !ether_addr_equal(mac, info->mac)))
   return 1;
 } else {
  if (is_valid_ether_addr(info->forced_mac) &&
      (!mac || !ether_addr_equal(mac, info->forced_mac)))
   return 1;
 }

 return 0;
}
