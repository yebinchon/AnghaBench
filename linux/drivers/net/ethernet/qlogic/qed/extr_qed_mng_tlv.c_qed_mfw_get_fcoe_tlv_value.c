
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct qed_tlv_parsed_buf {int * p_val; } ;
struct qed_mfw_tlv_time {int dummy; } ;
struct qed_mfw_tlv_fcoe {struct qed_mfw_tlv_time* scsi_chk_tstamp; int * scsi_rx_chk; int * scsi_rx_chk_set; int scsi_tsk_abort; int scsi_tsk_abort_set; int scsi_aca_active; int scsi_aca_active_set; int scsi_tsk_full; int scsi_tsk_full_set; int scsi_rsv_conflicts; int scsi_rsv_conflicts_set; int scsi_inter_cond_met; int scsi_inter_cond_met_set; int scsi_inter; int scsi_inter_set; int scsi_busy; int scsi_busy_set; int scsi_cond_met; int scsi_cond_met_set; int scsi_chks; int scsi_chks_set; int eofni; int eofni_set; int eofa; int eofa_set; int rx_lip; int rx_lip_set; int tx_lip; int tx_lip_set; int lrr; int lrr_set; int lr; int lr_set; int ols; int ols_set; int rx_nos; int rx_nos_set; int tx_nos; int tx_nos_set; int tx_tprlos; int tx_tprlos_set; int abort_task_sets; int abort_task_sets_set; int tx_lun_rst; int tx_lun_rst_set; int * rx_rscn_nport; int * rx_rscn_nport_set; int rx_rscn; int rx_rscn_set; struct qed_mfw_tlv_time* abts_tstamp; int * abts_dst_fcid; int * abts_dst_fcid_set; int rx_abts_rjt; int rx_abts_rjt_set; int rx_abts_acc; int rx_abts_acc_set; int tx_abts; int tx_abts_set; int rx_accs; int rx_accs_set; int tx_prlis; int tx_prlis_set; int tx_accs; int tx_accs_set; int rx_logos; int rx_logos_set; struct qed_mfw_tlv_time* plogo_tstamp; int * plogo_src_fcid; int * plogo_src_fcid_set; int plogo_rjt; int plogo_rjt_set; int plogo_acc; int plogo_acc_set; int tx_plogos; int tx_plogos_set; struct qed_mfw_tlv_time* plogi_acc_tstamp; int * plogi_acc_src_fcid; int * plogi_acc_src_fcid_set; struct qed_mfw_tlv_time* plogi_tstamp; int * plogi_dst_fcid; int * plogi_dst_fcid_set; int plogi_rjt; int plogi_rjt_set; int plogi_acc; int plogi_acc_set; int plogi; int plogi_set; int fdisc_rjt; int fdisc_rjt_set; int fdisc_acc; int fdisc_acc_set; int fdiscs; int fdiscs_set; struct qed_mfw_tlv_time flogi_rjt_tstamp; int flogi_rjt; int flogi_rjt_set; struct qed_mfw_tlv_time flogi_acc_tstamp; int * flogi_acc_param; int * flogi_acc_param_set; struct qed_mfw_tlv_time flogi_tstamp; int * flogi_param; int * flogi_param_set; int code_violation_err; int code_violation_err_set; int disparity_err; int disparity_err_set; int primtive_err; int primtive_err_set; int losig_err; int losig_err_set; int losync_err; int losync_err_set; struct qed_mfw_tlv_time* crc_err; int * crc_err_src_fcid; int * crc_err_src_fcid_set; int crc_count; int crc_count_set; int fcoe_tx_bytes; int fcoe_tx_bytes_set; int fcoe_tx_frames; int fcoe_tx_frames_set; int fcoe_rx_bytes; int fcoe_rx_bytes_set; int fcoe_rx_frames; int fcoe_rx_frames_set; int fcoe_rxq_depth; int fcoe_rxq_depth_set; int fcoe_txq_depth; int fcoe_txq_depth_set; int tx_bcast; int tx_bcast_set; int rx_bcast; int rx_bcast_set; int fcoe_boot_progress; int fcoe_boot_progress_set; int link_failures; int link_failures_set; int fip_rx_descr_size; int fip_rx_descr_size_set; int fip_tx_descr_size; int fip_tx_descr_size_set; int port_state; int port_state_set; int port_alias; int port_alias_set; int qos_pri; int qos_pri_set; int switch_fw_version; int switch_fw_version_set; int switch_model; int switch_model_set; int vendor_name; int vendor_name_set; int switch_portid; int switch_portid_set; int switch_portnum; int switch_portnum_set; int switch_name; int switch_name_set; int num_npiv_ids; int num_npiv_ids_set; int npiv_state; int npiv_state_set; int boot_type; int boot_type_set; int cr_tov; int cr_tov_set; int ed_tov; int ed_tov_set; int ra_tov; int ra_tov_set; int rt_tov; int rt_tov_set; int scsi_timeout; int scsi_timeout_set; } ;
struct qed_drv_tlv_hdr {int tlv_type; } ;
 int qed_mfw_get_tlv_time_value (struct qed_mfw_tlv_time*,struct qed_tlv_parsed_buf*) ;

__attribute__((used)) static int
qed_mfw_get_fcoe_tlv_value(struct qed_drv_tlv_hdr *p_tlv,
      struct qed_mfw_tlv_fcoe *p_drv_buf,
      struct qed_tlv_parsed_buf *p_buf)
{
 struct qed_mfw_tlv_time *p_time;
 u8 idx;

 switch (p_tlv->tlv_type) {
 case 136:
  if (p_drv_buf->scsi_timeout_set) {
   p_buf->p_val = &p_drv_buf->scsi_timeout;
   return sizeof(p_drv_buf->scsi_timeout);
  }
  break;
 case 156:
  if (p_drv_buf->rt_tov_set) {
   p_buf->p_val = &p_drv_buf->rt_tov;
   return sizeof(p_drv_buf->rt_tov);
  }
  break;
 case 157:
  if (p_drv_buf->ra_tov_set) {
   p_buf->p_val = &p_drv_buf->ra_tov;
   return sizeof(p_drv_buf->ra_tov);
  }
  break;
 case 243:
  if (p_drv_buf->ed_tov_set) {
   p_buf->p_val = &p_drv_buf->ed_tov;
   return sizeof(p_drv_buf->ed_tov);
  }
  break;
 case 247:
  if (p_drv_buf->cr_tov_set) {
   p_buf->p_val = &p_drv_buf->cr_tov;
   return sizeof(p_drv_buf->cr_tov);
  }
  break;
 case 260:
  if (p_drv_buf->boot_type_set) {
   p_buf->p_val = &p_drv_buf->boot_type;
   return sizeof(p_drv_buf->boot_type);
  }
  break;
 case 190:
  if (p_drv_buf->npiv_state_set) {
   p_buf->p_val = &p_drv_buf->npiv_state;
   return sizeof(p_drv_buf->npiv_state);
  }
  break;
 case 189:
  if (p_drv_buf->num_npiv_ids_set) {
   p_buf->p_val = &p_drv_buf->num_npiv_ids;
   return sizeof(p_drv_buf->num_npiv_ids);
  }
  break;
 case 133:
  if (p_drv_buf->switch_name_set) {
   p_buf->p_val = &p_drv_buf->switch_name;
   return sizeof(p_drv_buf->switch_name);
  }
  break;
 case 131:
  if (p_drv_buf->switch_portnum_set) {
   p_buf->p_val = &p_drv_buf->switch_portnum;
   return sizeof(p_drv_buf->switch_portnum);
  }
  break;
 case 132:
  if (p_drv_buf->switch_portid_set) {
   p_buf->p_val = &p_drv_buf->switch_portid;
   return sizeof(p_drv_buf->switch_portid);
  }
  break;
 case 128:
  if (p_drv_buf->vendor_name_set) {
   p_buf->p_val = &p_drv_buf->vendor_name;
   return sizeof(p_drv_buf->vendor_name);
  }
  break;
 case 134:
  if (p_drv_buf->switch_model_set) {
   p_buf->p_val = &p_drv_buf->switch_model;
   return sizeof(p_drv_buf->switch_model);
  }
  break;
 case 135:
  if (p_drv_buf->switch_fw_version_set) {
   p_buf->p_val = &p_drv_buf->switch_fw_version;
   return sizeof(p_drv_buf->switch_fw_version);
  }
  break;
 case 160:
  if (p_drv_buf->qos_pri_set) {
   p_buf->p_val = &p_drv_buf->qos_pri;
   return sizeof(p_drv_buf->qos_pri);
  }
  break;
 case 164:
  if (p_drv_buf->port_alias_set) {
   p_buf->p_val = &p_drv_buf->port_alias;
   return sizeof(p_drv_buf->port_alias);
  }
  break;
 case 163:
  if (p_drv_buf->port_state_set) {
   p_buf->p_val = &p_drv_buf->port_state;
   return sizeof(p_drv_buf->port_state);
  }
  break;
 case 231:
  if (p_drv_buf->fip_tx_descr_size_set) {
   p_buf->p_val = &p_drv_buf->fip_tx_descr_size;
   return sizeof(p_drv_buf->fip_tx_descr_size);
  }
  break;
 case 239:
  if (p_drv_buf->fip_rx_descr_size_set) {
   p_buf->p_val = &p_drv_buf->fip_rx_descr_size;
   return sizeof(p_drv_buf->fip_rx_descr_size);
  }
  break;
 case 214:
  if (p_drv_buf->link_failures_set) {
   p_buf->p_val = &p_drv_buf->link_failures;
   return sizeof(p_drv_buf->link_failures);
  }
  break;
 case 242:
  if (p_drv_buf->fcoe_boot_progress_set) {
   p_buf->p_val = &p_drv_buf->fcoe_boot_progress;
   return sizeof(p_drv_buf->fcoe_boot_progress);
  }
  break;
 case 158:
  if (p_drv_buf->rx_bcast_set) {
   p_buf->p_val = &p_drv_buf->rx_bcast;
   return sizeof(p_drv_buf->rx_bcast);
  }
  break;
 case 129:
  if (p_drv_buf->tx_bcast_set) {
   p_buf->p_val = &p_drv_buf->tx_bcast;
   return sizeof(p_drv_buf->tx_bcast);
  }
  break;
 case 236:
  if (p_drv_buf->fcoe_txq_depth_set) {
   p_buf->p_val = &p_drv_buf->fcoe_txq_depth;
   return sizeof(p_drv_buf->fcoe_txq_depth);
  }
  break;
 case 240:
  if (p_drv_buf->fcoe_rxq_depth_set) {
   p_buf->p_val = &p_drv_buf->fcoe_rxq_depth;
   return sizeof(p_drv_buf->fcoe_rxq_depth);
  }
  break;
 case 238:
  if (p_drv_buf->fcoe_rx_frames_set) {
   p_buf->p_val = &p_drv_buf->fcoe_rx_frames;
   return sizeof(p_drv_buf->fcoe_rx_frames);
  }
  break;
 case 241:
  if (p_drv_buf->fcoe_rx_bytes_set) {
   p_buf->p_val = &p_drv_buf->fcoe_rx_bytes;
   return sizeof(p_drv_buf->fcoe_rx_bytes);
  }
  break;
 case 235:
  if (p_drv_buf->fcoe_tx_frames_set) {
   p_buf->p_val = &p_drv_buf->fcoe_tx_frames;
   return sizeof(p_drv_buf->fcoe_tx_frames);
  }
  break;
 case 237:
  if (p_drv_buf->fcoe_tx_bytes_set) {
   p_buf->p_val = &p_drv_buf->fcoe_tx_bytes;
   return sizeof(p_drv_buf->fcoe_tx_bytes);
  }
  break;
 case 248:
  if (p_drv_buf->crc_count_set) {
   p_buf->p_val = &p_drv_buf->crc_count;
   return sizeof(p_drv_buf->crc_count);
  }
  break;
 case 258:
 case 256:
 case 254:
 case 252:
 case 250:
  idx = (p_tlv->tlv_type -
         258) / 2;

  if (p_drv_buf->crc_err_src_fcid_set[idx]) {
   p_buf->p_val = &p_drv_buf->crc_err_src_fcid[idx];
   return sizeof(p_drv_buf->crc_err_src_fcid[idx]);
  }
  break;
 case 257:
 case 255:
 case 253:
 case 251:
 case 249:
  idx = (p_tlv->tlv_type - 257) / 2;

  return qed_mfw_get_tlv_time_value(&p_drv_buf->crc_err[idx],
        p_buf);
 case 196:
  if (p_drv_buf->losync_err_set) {
   p_buf->p_val = &p_drv_buf->losync_err;
   return sizeof(p_drv_buf->losync_err);
  }
  break;
 case 197:
  if (p_drv_buf->losig_err_set) {
   p_buf->p_val = &p_drv_buf->losig_err;
   return sizeof(p_drv_buf->losig_err);
  }
  break;
 case 162:
  if (p_drv_buf->primtive_err_set) {
   p_buf->p_val = &p_drv_buf->primtive_err;
   return sizeof(p_drv_buf->primtive_err);
  }
  break;
 case 246:
  if (p_drv_buf->disparity_err_set) {
   p_buf->p_val = &p_drv_buf->disparity_err;
   return sizeof(p_drv_buf->disparity_err);
  }
  break;
 case 259:
  if (p_drv_buf->code_violation_err_set) {
   p_buf->p_val = &p_drv_buf->code_violation_err;
   return sizeof(p_drv_buf->code_violation_err);
  }
  break;
 case 225:
 case 224:
 case 223:
 case 222:
  idx = p_tlv->tlv_type -
   225;
  if (p_drv_buf->flogi_param_set[idx]) {
   p_buf->p_val = &p_drv_buf->flogi_param[idx];
   return sizeof(p_drv_buf->flogi_param[idx]);
  }
  break;
 case 219:
  return qed_mfw_get_tlv_time_value(&p_drv_buf->flogi_tstamp,
        p_buf);
 case 230:
 case 229:
 case 228:
 case 227:
  idx = p_tlv->tlv_type -
   230;

  if (p_drv_buf->flogi_acc_param_set[idx]) {
   p_buf->p_val = &p_drv_buf->flogi_acc_param[idx];
   return sizeof(p_drv_buf->flogi_acc_param[idx]);
  }
  break;
 case 226:
  return qed_mfw_get_tlv_time_value(&p_drv_buf->flogi_acc_tstamp,
        p_buf);
 case 221:
  if (p_drv_buf->flogi_rjt_set) {
   p_buf->p_val = &p_drv_buf->flogi_rjt;
   return sizeof(p_drv_buf->flogi_rjt);
  }
  break;
 case 220:
  return qed_mfw_get_tlv_time_value(&p_drv_buf->flogi_rjt_tstamp,
        p_buf);
 case 234:
  if (p_drv_buf->fdiscs_set) {
   p_buf->p_val = &p_drv_buf->fdiscs;
   return sizeof(p_drv_buf->fdiscs);
  }
  break;
 case 233:
  if (p_drv_buf->fdisc_acc_set) {
   p_buf->p_val = &p_drv_buf->fdisc_acc;
   return sizeof(p_drv_buf->fdisc_acc);
  }
  break;
 case 232:
  if (p_drv_buf->fdisc_rjt_set) {
   p_buf->p_val = &p_drv_buf->fdisc_rjt;
   return sizeof(p_drv_buf->fdisc_rjt);
  }
  break;
 case 165:
  if (p_drv_buf->plogi_set) {
   p_buf->p_val = &p_drv_buf->plogi;
   return sizeof(p_drv_buf->plogi);
  }
  break;
 case 167:
  if (p_drv_buf->plogi_acc_set) {
   p_buf->p_val = &p_drv_buf->plogi_acc;
   return sizeof(p_drv_buf->plogi_acc);
  }
  break;
 case 166:
  if (p_drv_buf->plogi_rjt_set) {
   p_buf->p_val = &p_drv_buf->plogi_rjt;
   return sizeof(p_drv_buf->plogi_rjt);
  }
  break;
 case 185:
 case 181:
 case 177:
 case 173:
 case 169:
  idx = (p_tlv->tlv_type -
         185) / 2;

  if (p_drv_buf->plogi_dst_fcid_set[idx]) {
   p_buf->p_val = &p_drv_buf->plogi_dst_fcid[idx];
   return sizeof(p_drv_buf->plogi_dst_fcid[idx]);
  }
  break;
 case 184:
 case 180:
 case 176:
 case 172:
 case 168:
  idx = (p_tlv->tlv_type - 184) / 2;

  return qed_mfw_get_tlv_time_value(&p_drv_buf->plogi_tstamp[idx],
        p_buf);
 case 187:
 case 183:
 case 179:
 case 175:
 case 171:
  idx = (p_tlv->tlv_type -
         187) / 2;

  if (p_drv_buf->plogi_acc_src_fcid_set[idx]) {
   p_buf->p_val = &p_drv_buf->plogi_acc_src_fcid[idx];
   return sizeof(p_drv_buf->plogi_acc_src_fcid[idx]);
  }
  break;
 case 186:
 case 182:
 case 178:
 case 174:
 case 170:
  idx = (p_tlv->tlv_type - 186) / 2;
  p_time = &p_drv_buf->plogi_acc_tstamp[idx];

  return qed_mfw_get_tlv_time_value(p_time, p_buf);
 case 211:
  if (p_drv_buf->tx_plogos_set) {
   p_buf->p_val = &p_drv_buf->tx_plogos;
   return sizeof(p_drv_buf->tx_plogos);
  }
  break;
 case 199:
  if (p_drv_buf->plogo_acc_set) {
   p_buf->p_val = &p_drv_buf->plogo_acc;
   return sizeof(p_drv_buf->plogo_acc);
  }
  break;
 case 198:
  if (p_drv_buf->plogo_rjt_set) {
   p_buf->p_val = &p_drv_buf->plogo_rjt;
   return sizeof(p_drv_buf->plogo_rjt);
  }
  break;
 case 209:
 case 207:
 case 205:
 case 203:
 case 201:
  idx = (p_tlv->tlv_type - 209) /
   2;

  if (p_drv_buf->plogo_src_fcid_set[idx]) {
   p_buf->p_val = &p_drv_buf->plogo_src_fcid[idx];
   return sizeof(p_drv_buf->plogo_src_fcid[idx]);
  }
  break;
 case 208:
 case 206:
 case 204:
 case 202:
 case 200:
  idx = (p_tlv->tlv_type - 208) / 2;

  return qed_mfw_get_tlv_time_value(&p_drv_buf->plogo_tstamp[idx],
        p_buf);
 case 210:
  if (p_drv_buf->rx_logos_set) {
   p_buf->p_val = &p_drv_buf->rx_logos;
   return sizeof(p_drv_buf->rx_logos);
  }
  break;
 case 262:
  if (p_drv_buf->tx_accs_set) {
   p_buf->p_val = &p_drv_buf->tx_accs;
   return sizeof(p_drv_buf->tx_accs);
  }
  break;
 case 161:
  if (p_drv_buf->tx_prlis_set) {
   p_buf->p_val = &p_drv_buf->tx_prlis;
   return sizeof(p_drv_buf->tx_prlis);
  }
  break;
 case 261:
  if (p_drv_buf->rx_accs_set) {
   p_buf->p_val = &p_drv_buf->rx_accs;
   return sizeof(p_drv_buf->rx_accs);
  }
  break;
 case 263:
  if (p_drv_buf->tx_abts_set) {
   p_buf->p_val = &p_drv_buf->tx_abts;
   return sizeof(p_drv_buf->tx_abts);
  }
  break;
 case 265:
  if (p_drv_buf->rx_abts_acc_set) {
   p_buf->p_val = &p_drv_buf->rx_abts_acc;
   return sizeof(p_drv_buf->rx_abts_acc);
  }
  break;
 case 264:
  if (p_drv_buf->rx_abts_rjt_set) {
   p_buf->p_val = &p_drv_buf->rx_abts_rjt;
   return sizeof(p_drv_buf->rx_abts_rjt);
  }
  break;
 case 275:
 case 273:
 case 271:
 case 269:
 case 267:
  idx = (p_tlv->tlv_type -
         275) / 2;

  if (p_drv_buf->abts_dst_fcid_set[idx]) {
   p_buf->p_val = &p_drv_buf->abts_dst_fcid[idx];
   return sizeof(p_drv_buf->abts_dst_fcid[idx]);
  }
  break;
 case 274:
 case 272:
 case 270:
 case 268:
 case 266:
  idx = (p_tlv->tlv_type - 274) / 2;

  return qed_mfw_get_tlv_time_value(&p_drv_buf->abts_tstamp[idx],
        p_buf);
 case 159:
  if (p_drv_buf->rx_rscn_set) {
   p_buf->p_val = &p_drv_buf->rx_rscn;
   return sizeof(p_drv_buf->rx_rscn);
  }
  break;
 case 218:
 case 217:
 case 216:
 case 215:
  idx = p_tlv->tlv_type - 218;

  if (p_drv_buf->rx_rscn_nport_set[idx]) {
   p_buf->p_val = &p_drv_buf->rx_rscn_nport[idx];
   return sizeof(p_drv_buf->rx_rscn_nport[idx]);
  }
  break;
 case 193:
  if (p_drv_buf->tx_lun_rst_set) {
   p_buf->p_val = &p_drv_buf->tx_lun_rst;
   return sizeof(p_drv_buf->tx_lun_rst);
  }
  break;
 case 276:
  if (p_drv_buf->abort_task_sets_set) {
   p_buf->p_val = &p_drv_buf->abort_task_sets;
   return sizeof(p_drv_buf->abort_task_sets);
  }
  break;
 case 130:
  if (p_drv_buf->tx_tprlos_set) {
   p_buf->p_val = &p_drv_buf->tx_tprlos;
   return sizeof(p_drv_buf->tx_tprlos);
  }
  break;
 case 191:
  if (p_drv_buf->tx_nos_set) {
   p_buf->p_val = &p_drv_buf->tx_nos;
   return sizeof(p_drv_buf->tx_nos);
  }
  break;
 case 192:
  if (p_drv_buf->rx_nos_set) {
   p_buf->p_val = &p_drv_buf->rx_nos;
   return sizeof(p_drv_buf->rx_nos);
  }
  break;
 case 188:
  if (p_drv_buf->ols_set) {
   p_buf->p_val = &p_drv_buf->ols;
   return sizeof(p_drv_buf->ols);
  }
  break;
 case 194:
  if (p_drv_buf->lr_set) {
   p_buf->p_val = &p_drv_buf->lr;
   return sizeof(p_drv_buf->lr);
  }
  break;
 case 195:
  if (p_drv_buf->lrr_set) {
   p_buf->p_val = &p_drv_buf->lrr;
   return sizeof(p_drv_buf->lrr);
  }
  break;
 case 212:
  if (p_drv_buf->tx_lip_set) {
   p_buf->p_val = &p_drv_buf->tx_lip;
   return sizeof(p_drv_buf->tx_lip);
  }
  break;
 case 213:
  if (p_drv_buf->rx_lip_set) {
   p_buf->p_val = &p_drv_buf->rx_lip;
   return sizeof(p_drv_buf->rx_lip);
  }
  break;
 case 245:
  if (p_drv_buf->eofa_set) {
   p_buf->p_val = &p_drv_buf->eofa;
   return sizeof(p_drv_buf->eofa);
  }
  break;
 case 244:
  if (p_drv_buf->eofni_set) {
   p_buf->p_val = &p_drv_buf->eofni;
   return sizeof(p_drv_buf->eofni);
  }
  break;
 case 143:
  if (p_drv_buf->scsi_chks_set) {
   p_buf->p_val = &p_drv_buf->scsi_chks;
   return sizeof(p_drv_buf->scsi_chks);
  }
  break;
 case 142:
  if (p_drv_buf->scsi_cond_met_set) {
   p_buf->p_val = &p_drv_buf->scsi_cond_met;
   return sizeof(p_drv_buf->scsi_cond_met);
  }
  break;
 case 144:
  if (p_drv_buf->scsi_busy_set) {
   p_buf->p_val = &p_drv_buf->scsi_busy;
   return sizeof(p_drv_buf->scsi_busy);
  }
  break;
 case 140:
  if (p_drv_buf->scsi_inter_set) {
   p_buf->p_val = &p_drv_buf->scsi_inter;
   return sizeof(p_drv_buf->scsi_inter);
  }
  break;
 case 141:
  if (p_drv_buf->scsi_inter_cond_met_set) {
   p_buf->p_val = &p_drv_buf->scsi_inter_cond_met;
   return sizeof(p_drv_buf->scsi_inter_cond_met);
  }
  break;
 case 139:
  if (p_drv_buf->scsi_rsv_conflicts_set) {
   p_buf->p_val = &p_drv_buf->scsi_rsv_conflicts;
   return sizeof(p_drv_buf->scsi_rsv_conflicts);
  }
  break;
 case 137:
  if (p_drv_buf->scsi_tsk_full_set) {
   p_buf->p_val = &p_drv_buf->scsi_tsk_full;
   return sizeof(p_drv_buf->scsi_tsk_full);
  }
  break;
 case 145:
  if (p_drv_buf->scsi_aca_active_set) {
   p_buf->p_val = &p_drv_buf->scsi_aca_active;
   return sizeof(p_drv_buf->scsi_aca_active);
  }
  break;
 case 138:
  if (p_drv_buf->scsi_tsk_abort_set) {
   p_buf->p_val = &p_drv_buf->scsi_tsk_abort;
   return sizeof(p_drv_buf->scsi_tsk_abort);
  }
  break;
 case 150:
 case 149:
 case 148:
 case 147:
 case 146:
  idx = (p_tlv->tlv_type -
         150) / 2;

  if (p_drv_buf->scsi_rx_chk_set[idx]) {
   p_buf->p_val = &p_drv_buf->scsi_rx_chk[idx];
   return sizeof(p_drv_buf->scsi_rx_chk[idx]);
  }
  break;
 case 155:
 case 154:
 case 153:
 case 152:
 case 151:
  idx = (p_tlv->tlv_type - 155) / 2;
  p_time = &p_drv_buf->scsi_chk_tstamp[idx];

  return qed_mfw_get_tlv_time_value(p_time, p_buf);
 default:
  break;
 }

 return -1;
}
