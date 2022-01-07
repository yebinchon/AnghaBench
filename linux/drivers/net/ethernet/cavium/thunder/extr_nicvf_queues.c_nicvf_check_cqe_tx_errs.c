
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nicvf {TYPE_1__* drv_stats; } ;
struct cqe_send_t {int send_status; } ;
struct TYPE_2__ {int tx_csum_overflow; int tx_csum_overlap; int tx_mem_fault; int tx_tstmp_timeout; int tx_tstmp_conflict; int tx_data_fault; int tx_lock_viol; int tx_mem_seq_err; int tx_data_seq_err; int tx_imm_size_oflow; int tx_max_size_exceeded; int tx_subdesc_err; int tx_hdr_cons_err; int tx_desc_fault; } ;
 int this_cpu_inc (int ) ;

int nicvf_check_cqe_tx_errs(struct nicvf *nic, struct cqe_send_t *cqe_tx)
{
 switch (cqe_tx->send_status) {
 case 137:
  this_cpu_inc(nic->drv_stats->tx_desc_fault);
  break;
 case 136:
  this_cpu_inc(nic->drv_stats->tx_hdr_cons_err);
  break;
 case 130:
  this_cpu_inc(nic->drv_stats->tx_subdesc_err);
  break;
 case 133:
  this_cpu_inc(nic->drv_stats->tx_max_size_exceeded);
  break;
 case 135:
  this_cpu_inc(nic->drv_stats->tx_imm_size_oflow);
  break;
 case 138:
  this_cpu_inc(nic->drv_stats->tx_data_seq_err);
  break;
 case 131:
  this_cpu_inc(nic->drv_stats->tx_mem_seq_err);
  break;
 case 134:
  this_cpu_inc(nic->drv_stats->tx_lock_viol);
  break;
 case 139:
  this_cpu_inc(nic->drv_stats->tx_data_fault);
  break;
 case 129:
  this_cpu_inc(nic->drv_stats->tx_tstmp_conflict);
  break;
 case 128:
  this_cpu_inc(nic->drv_stats->tx_tstmp_timeout);
  break;
 case 132:
  this_cpu_inc(nic->drv_stats->tx_mem_fault);
  break;
 case 140:
  this_cpu_inc(nic->drv_stats->tx_csum_overlap);
  break;
 case 141:
  this_cpu_inc(nic->drv_stats->tx_csum_overflow);
  break;
 }

 return 1;
}
