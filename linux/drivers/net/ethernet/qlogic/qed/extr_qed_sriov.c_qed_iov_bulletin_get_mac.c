
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {TYPE_1__* p_virt; } ;
struct qed_vf_info {TYPE_2__ bulletin; } ;
struct qed_hwfn {int dummy; } ;
struct TYPE_3__ {int valid_bitmap; int * mac; } ;


 int BIT (int ) ;
 int VFPF_BULLETIN_MAC_ADDR ;
 struct qed_vf_info* qed_iov_get_vf_info (struct qed_hwfn*,int ,int) ;

__attribute__((used)) static u8 *qed_iov_bulletin_get_mac(struct qed_hwfn *p_hwfn, u16 rel_vf_id)
{
 struct qed_vf_info *p_vf;

 p_vf = qed_iov_get_vf_info(p_hwfn, rel_vf_id, 1);
 if (!p_vf || !p_vf->bulletin.p_virt)
  return ((void*)0);

 if (!(p_vf->bulletin.p_virt->valid_bitmap &
       BIT(VFPF_BULLETIN_MAC_ADDR)))
  return ((void*)0);

 return p_vf->bulletin.p_virt->mac;
}
