
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qed_hwfn {TYPE_1__* vf_iov_info; } ;
struct qed_bulletin_content {int valid_bitmap; int mac; } ;
struct TYPE_2__ {struct qed_bulletin_content bulletin_shadow; } ;


 int MAC_ADDR_FORCED ;
 scalar_t__ ether_addr_equal (int ,int *) ;

bool qed_vf_check_mac(struct qed_hwfn *p_hwfn, u8 *mac)
{
 struct qed_bulletin_content *bulletin;

 bulletin = &p_hwfn->vf_iov_info->bulletin_shadow;
 if (!(bulletin->valid_bitmap & (1 << MAC_ADDR_FORCED)))
  return 1;


 if (ether_addr_equal(bulletin->mac, mac))
  return 0;

 return 0;
}
