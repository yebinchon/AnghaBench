
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union vfpf_tlvs {int dummy; } vfpf_tlvs ;
typedef union pfvf_tlvs {int dummy; } pfvf_tlvs ;
typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u16 ;
struct vfpf_first_tlv {scalar_t__ reply_address; } ;
struct qed_vf_iov {scalar_t__ pf2vf_reply_phys; int * offset; scalar_t__ pf2vf_reply; scalar_t__ vf2pf_request; int mutex; } ;
struct qed_hwfn {struct qed_vf_iov* vf_iov_info; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ) ;
 int QED_MSG_IOV ;
 int memset (scalar_t__,int ,int) ;
 int mutex_lock (int *) ;
 void* qed_add_tlv (struct qed_hwfn*,int **,int ,int ) ;

__attribute__((used)) static void *qed_vf_pf_prep(struct qed_hwfn *p_hwfn, u16 type, u16 length)
{
 struct qed_vf_iov *p_iov = p_hwfn->vf_iov_info;
 void *p_tlv;






 mutex_lock(&(p_iov->mutex));

 DP_VERBOSE(p_hwfn,
     QED_MSG_IOV,
     "preparing to send 0x%04x tlv over vf pf channel\n",
     type);


 p_iov->offset = (u8 *)p_iov->vf2pf_request;


 memset(p_iov->vf2pf_request, 0, sizeof(union vfpf_tlvs));
 memset(p_iov->pf2vf_reply, 0, sizeof(union pfvf_tlvs));


 p_tlv = qed_add_tlv(p_hwfn, &p_iov->offset, type, length);


 ((struct vfpf_first_tlv *)p_tlv)->reply_address =
     (u64)p_iov->pf2vf_reply_phys;

 return p_tlv;
}
