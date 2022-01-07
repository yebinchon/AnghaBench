
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int type; } ;
struct TYPE_12__ {TYPE_5__ tl; } ;
union vfpf_tlvs {TYPE_6__ first_tlv; } ;
typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_8__ {int hi; int lo; } ;
struct TYPE_9__ {TYPE_2__ vf_pf_msg_addr; } ;
struct ustorm_vf_zone {int trigger; TYPE_3__ non_trigger; } ;
struct ustorm_trigger_vf_zone {int vf_pf_msg_valid; } ;
struct TYPE_7__ {int concrete_fid; } ;
struct qed_hwfn {TYPE_4__* vf_iov_info; TYPE_1__ hw_info; } ;
struct channel_list_end_tlv {int dummy; } ;
struct TYPE_10__ {int vf2pf_request_phys; union vfpf_tlvs* vf2pf_request; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,scalar_t__,...) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,scalar_t__,int,...) ;
 int EBUSY ;
 int GET_FIELD (int ,int ) ;
 scalar_t__ PFVF_STATUS_NO_RESOURCE ;
 scalar_t__ PFVF_STATUS_SUCCESS ;
 int PXP_CONCRETE_FID_PFID ;
 scalar_t__ PXP_VF_BAR0_START_USDM_ZONE_B ;
 int QED_MSG_IOV ;
 int REG_WR (struct qed_hwfn*,uintptr_t,int) ;
 int lower_32_bits (int ) ;
 int memset (struct ustorm_trigger_vf_zone*,int ,int) ;
 int msleep (int) ;
 int qed_dp_tlv_list (struct qed_hwfn*,union vfpf_tlvs*) ;
 int upper_32_bits (int ) ;
 int wmb () ;

__attribute__((used)) static int qed_send_msg2pf(struct qed_hwfn *p_hwfn, u8 *done, u32 resp_size)
{
 union vfpf_tlvs *p_req = p_hwfn->vf_iov_info->vf2pf_request;
 struct ustorm_trigger_vf_zone trigger;
 struct ustorm_vf_zone *zone_data;
 int rc = 0, time = 100;

 zone_data = (struct ustorm_vf_zone *)PXP_VF_BAR0_START_USDM_ZONE_B;


 qed_dp_tlv_list(p_hwfn, p_req);


 resp_size += sizeof(struct channel_list_end_tlv);


 memset(&trigger, 0, sizeof(struct ustorm_trigger_vf_zone));
 trigger.vf_pf_msg_valid = 1;

 DP_VERBOSE(p_hwfn,
     QED_MSG_IOV,
     "VF -> PF [%02x] message: [%08x, %08x] --> %p, %08x --> %p\n",
     GET_FIELD(p_hwfn->hw_info.concrete_fid,
        PXP_CONCRETE_FID_PFID),
     upper_32_bits(p_hwfn->vf_iov_info->vf2pf_request_phys),
     lower_32_bits(p_hwfn->vf_iov_info->vf2pf_request_phys),
     &zone_data->non_trigger.vf_pf_msg_addr,
     *((u32 *)&trigger), &zone_data->trigger);

 REG_WR(p_hwfn,
        (uintptr_t)&zone_data->non_trigger.vf_pf_msg_addr.lo,
        lower_32_bits(p_hwfn->vf_iov_info->vf2pf_request_phys));

 REG_WR(p_hwfn,
        (uintptr_t)&zone_data->non_trigger.vf_pf_msg_addr.hi,
        upper_32_bits(p_hwfn->vf_iov_info->vf2pf_request_phys));




 wmb();

 REG_WR(p_hwfn, (uintptr_t)&zone_data->trigger, *((u32 *)&trigger));




 while ((!*done) && time) {
  msleep(25);
  time--;
 }

 if (!*done) {
  DP_NOTICE(p_hwfn,
     "VF <-- PF Timeout [Type %d]\n",
     p_req->first_tlv.tl.type);
  rc = -EBUSY;
 } else {
  if ((*done != PFVF_STATUS_SUCCESS) &&
      (*done != PFVF_STATUS_NO_RESOURCE))
   DP_NOTICE(p_hwfn,
      "PF response: %d [Type %d]\n",
      *done, p_req->first_tlv.tl.type);
  else
   DP_VERBOSE(p_hwfn, QED_MSG_IOV,
       "PF response: %d [Type %d]\n",
       *done, p_req->first_tlv.tl.type);
 }

 return rc;
}
