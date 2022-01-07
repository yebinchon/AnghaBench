
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct TYPE_3__ {int split_type; scalar_t__ split_id; } ;
struct dbg_tools_data {scalar_t__ num_regs_read; size_t platform_id; scalar_t__ num_pfs_per_port; scalar_t__ num_ports; TYPE_1__ pretend; scalar_t__ use_dmae; } ;
struct qed_hwfn {struct dbg_tools_data dbg_info; } ;
typedef enum init_split_types { ____Placeholder_init_split_types } init_split_types ;
struct TYPE_4__ {scalar_t__ log_thresh; scalar_t__ dmae_thresh; } ;


 scalar_t__ BIT (int ) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,...) ;
 int DWORDS_TO_BYTES (scalar_t__) ;
 scalar_t__ PXP_PRETEND_CONCRETE_FID_PFID_SHIFT ;
 scalar_t__ PXP_PRETEND_CONCRETE_FID_VFID_SHIFT ;
 int PXP_PRETEND_CONCRETE_FID_VFVALID_SHIFT ;
 int QED_MSG_DEBUG ;
 int SPLIT_TYPE_NONE ;




 int qed_dmae_grc2host (struct qed_hwfn*,struct qed_ptt*,int ,int ,scalar_t__,int *) ;
 int qed_fid_pretend (struct qed_hwfn*,struct qed_ptt*,scalar_t__) ;
 int qed_port_fid_pretend (struct qed_hwfn*,struct qed_ptt*,scalar_t__,scalar_t__) ;
 int qed_port_pretend (struct qed_hwfn*,struct qed_ptt*,scalar_t__) ;
 int qed_read_regs (struct qed_hwfn*,struct qed_ptt*,scalar_t__*,scalar_t__,scalar_t__) ;
 TYPE_2__* s_platform_defs ;

__attribute__((used)) static u32 qed_grc_dump_addr_range(struct qed_hwfn *p_hwfn,
       struct qed_ptt *p_ptt,
       u32 *dump_buf,
       bool dump, u32 addr, u32 len, bool wide_bus,
       enum init_split_types split_type,
       u8 split_id)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
 u8 port_id = 0, pf_id = 0, vf_id = 0, fid = 0;

 if (!dump)
  return len;


 dev_data->num_regs_read += len;
 if (dev_data->num_regs_read >=
     s_platform_defs[dev_data->platform_id].log_thresh) {
  DP_VERBOSE(p_hwfn,
      QED_MSG_DEBUG,
      "Dumping %d registers...\n",
      dev_data->num_regs_read);
  dev_data->num_regs_read = 0;
 }

 switch (split_type) {
 case 130:
  port_id = split_id;
  break;
 case 131:
  pf_id = split_id;
  break;
 case 129:
  port_id = split_id / dev_data->num_pfs_per_port;
  pf_id = port_id + dev_data->num_ports *
      (split_id % dev_data->num_pfs_per_port);
  break;
 case 128:
  vf_id = split_id;
  break;
 default:
  break;
 }


 if (dev_data->use_dmae && split_type == SPLIT_TYPE_NONE &&
     (len >= s_platform_defs[dev_data->platform_id].dmae_thresh ||
      wide_bus)) {
  if (!qed_dmae_grc2host(p_hwfn, p_ptt, DWORDS_TO_BYTES(addr),
           (u64)(uintptr_t)(dump_buf), len, ((void*)0)))
   return len;
  dev_data->use_dmae = 0;
  DP_VERBOSE(p_hwfn,
      QED_MSG_DEBUG,
      "Failed reading from chip using DMAE, using GRC instead\n");
 }




 if (split_type != dev_data->pretend.split_type || split_id !=
     dev_data->pretend.split_id) {
  switch (split_type) {
  case 130:
   qed_port_pretend(p_hwfn, p_ptt, port_id);
   break;
  case 131:
   fid = pf_id << PXP_PRETEND_CONCRETE_FID_PFID_SHIFT;
   qed_fid_pretend(p_hwfn, p_ptt, fid);
   break;
  case 129:
   fid = pf_id << PXP_PRETEND_CONCRETE_FID_PFID_SHIFT;
   qed_port_fid_pretend(p_hwfn, p_ptt, port_id, fid);
   break;
  case 128:
   fid = BIT(PXP_PRETEND_CONCRETE_FID_VFVALID_SHIFT) |
         (vf_id << PXP_PRETEND_CONCRETE_FID_VFID_SHIFT);
   qed_fid_pretend(p_hwfn, p_ptt, fid);
   break;
  default:
   break;
  }

  dev_data->pretend.split_type = (u8)split_type;
  dev_data->pretend.split_id = split_id;
 }


 qed_read_regs(p_hwfn, p_ptt, dump_buf, addr, len);

 return len;
}
