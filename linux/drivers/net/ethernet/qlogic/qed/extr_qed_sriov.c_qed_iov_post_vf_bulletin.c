
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int size; int phys; struct qed_bulletin_content* p_virt; } ;
struct qed_vf_info {TYPE_1__ bulletin; int vf_bulletin; int abs_vf_id; int relative_vf_id; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dmae_params {int dst_vfid; int flags; } ;
struct qed_bulletin_content {int crc; int version; } ;
typedef int params ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,int ,int ) ;
 int EINVAL ;
 int QED_DMAE_FLAG_VF_DST ;
 int QED_MSG_IOV ;
 int crc32 (int ,int *,int) ;
 int memset (struct qed_dmae_params*,int ,int) ;
 int qed_dmae_host2host (struct qed_hwfn*,struct qed_ptt*,int ,int ,int,struct qed_dmae_params*) ;
 struct qed_vf_info* qed_iov_get_vf_info (struct qed_hwfn*,int ,int) ;

__attribute__((used)) static int qed_iov_post_vf_bulletin(struct qed_hwfn *p_hwfn,
        int vfid, struct qed_ptt *p_ptt)
{
 struct qed_bulletin_content *p_bulletin;
 int crc_size = sizeof(p_bulletin->crc);
 struct qed_dmae_params params;
 struct qed_vf_info *p_vf;

 p_vf = qed_iov_get_vf_info(p_hwfn, (u16) vfid, 1);
 if (!p_vf)
  return -EINVAL;

 if (!p_vf->vf_bulletin)
  return -EINVAL;

 p_bulletin = p_vf->bulletin.p_virt;


 p_bulletin->version++;
 p_bulletin->crc = crc32(0, (u8 *)p_bulletin + crc_size,
    p_vf->bulletin.size - crc_size);

 DP_VERBOSE(p_hwfn, QED_MSG_IOV,
     "Posting Bulletin 0x%08x to VF[%d] (CRC 0x%08x)\n",
     p_bulletin->version, p_vf->relative_vf_id, p_bulletin->crc);


 memset(&params, 0, sizeof(params));
 params.flags = QED_DMAE_FLAG_VF_DST;
 params.dst_vfid = p_vf->abs_vf_id;
 return qed_dmae_host2host(p_hwfn, p_ptt, p_vf->bulletin.phys,
      p_vf->vf_bulletin, p_vf->bulletin.size / 4,
      &params);
}
