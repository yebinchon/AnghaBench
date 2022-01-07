
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ eth_fp_hsi_minor; int capabilities; } ;
struct TYPE_4__ {TYPE_1__ vfdev_info; } ;
struct qed_vf_info {TYPE_2__ acquire; } ;


 scalar_t__ ETH_HSI_VER_NO_PKT_LEN_TUNN ;
 int QED_QCID_LEGACY_VF_CID ;
 int QED_QCID_LEGACY_VF_RX_PROD ;
 int VFPF_ACQUIRE_CAP_QUEUE_QIDS ;

__attribute__((used)) static u8 qed_vf_calculate_legacy(struct qed_vf_info *p_vf)
{
 u8 legacy = 0;

 if (p_vf->acquire.vfdev_info.eth_fp_hsi_minor ==
     ETH_HSI_VER_NO_PKT_LEN_TUNN)
  legacy |= QED_QCID_LEGACY_VF_RX_PROD;

 if (!(p_vf->acquire.vfdev_info.capabilities &
       VFPF_ACQUIRE_CAP_QUEUE_QIDS))
  legacy |= QED_QCID_LEGACY_VF_CID;

 return legacy;
}
