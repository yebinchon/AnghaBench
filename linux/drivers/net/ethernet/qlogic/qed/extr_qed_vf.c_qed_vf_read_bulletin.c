
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ size; struct qed_bulletin_content* p_virt; } ;
struct qed_bulletin_content {scalar_t__ version; int crc; } ;
struct qed_vf_iov {TYPE_1__ bulletin; struct qed_bulletin_content bulletin_shadow; } ;
struct qed_hwfn {struct qed_vf_iov* vf_iov_info; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,scalar_t__) ;
 int EAGAIN ;
 int QED_MSG_IOV ;
 int crc32 (int ,int*,scalar_t__) ;
 int memcpy (struct qed_bulletin_content*,struct qed_bulletin_content*,scalar_t__) ;

int qed_vf_read_bulletin(struct qed_hwfn *p_hwfn, u8 *p_change)
{
 struct qed_vf_iov *p_iov = p_hwfn->vf_iov_info;
 struct qed_bulletin_content shadow;
 u32 crc, crc_size;

 crc_size = sizeof(p_iov->bulletin.p_virt->crc);
 *p_change = 0;


 memcpy(&shadow, p_iov->bulletin.p_virt, p_iov->bulletin.size);


 if (shadow.version == p_iov->bulletin_shadow.version)
  return 0;


 crc = crc32(0, (u8 *)&shadow + crc_size,
      p_iov->bulletin.size - crc_size);
 if (crc != shadow.crc)
  return -EAGAIN;


 memcpy(&p_iov->bulletin_shadow, &shadow, p_iov->bulletin.size);

 DP_VERBOSE(p_hwfn, QED_MSG_IOV,
     "Read a bulletin update %08x\n", shadow.version);

 *p_change = 1;

 return 0;
}
