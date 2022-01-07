
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct vfpf_fp_hsi_resp_tlv {int is_supported; } ;
struct bnx2x_virtf {int fp_hsi; } ;
struct bnx2x {int dummy; } ;


 int CHANNEL_TLV_FP_HSI_SUPPORT ;
 int ETH_FP_HSI_VERSION ;
 int bnx2x_add_tlv (struct bnx2x*,void*,int,int ,int) ;

__attribute__((used)) static void bnx2x_vf_mbx_resp_fp_hsi_ver(struct bnx2x *bp,
      struct bnx2x_virtf *vf,
      void *buffer,
      u16 *offset)
{
 struct vfpf_fp_hsi_resp_tlv *fp_hsi;

 bnx2x_add_tlv(bp, buffer, *offset, CHANNEL_TLV_FP_HSI_SUPPORT,
        sizeof(struct vfpf_fp_hsi_resp_tlv));

 fp_hsi = (struct vfpf_fp_hsi_resp_tlv *)
   (((u8 *)buffer) + *offset);
 fp_hsi->is_supported = (vf->fp_hsi > ETH_FP_HSI_VERSION) ? 0 : 1;




 *offset += sizeof(struct vfpf_fp_hsi_resp_tlv);
}
