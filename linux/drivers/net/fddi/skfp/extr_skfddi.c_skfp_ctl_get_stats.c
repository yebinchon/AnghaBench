
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_17__ ;
typedef struct TYPE_24__ TYPE_16__ ;
typedef struct TYPE_23__ TYPE_15__ ;
typedef struct TYPE_22__ TYPE_14__ ;
typedef struct TYPE_21__ TYPE_13__ ;
typedef struct TYPE_20__ TYPE_12__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_24__ {int* port_bs_flag; } ;
struct TYPE_25__ {TYPE_16__ MacStat; } ;
struct TYPE_19__ {int * port_lem_cts; int * port_lem_reject_cts; int * port_lct_fail_cts; int mac_lost_cts; int mac_error_cts; int mac_transmit_cts; int mac_copied_cts; int mac_frame_cts; int * port_hardware_present; int * port_ler_flag; int * port_pc_withhold; int * port_pcm_state; int * port_connect_state; int * port_ler_alarm; int * port_ler_cutoff; int * port_ler_estimate; int * port_bs_flag; int * port_connection_capabilities; int * port_pmd_class; int * port_available_paths; int * port_mac_placement; int * port_requested_paths; int * port_current_path; int * port_mac_indicated; int * port_connection_policies; int * port_neighbor_type; int * port_my_type; int * path_configuration; int path_max_t_req; int path_t_max_lower_bound; int path_tvx_lower_bound; int mac_ma_unitdata_enable; int mac_hardware_present; int mac_ma_unitdata_available; int mac_frame_error_flag; int mac_una_da_flag; int mac_da_flag; int mac_rmt_state; int mac_frame_error_ratio; int mac_frame_error_threshold; int mac_tvx_value; int mac_t_max; int mac_t_neg; int mac_t_req; int * mac_smt_address; int mac_downstream_port_type; int mac_requested_paths; int mac_dup_address_test; int * mac_old_downstream_nbr; int * mac_old_upstream_nbr; int * mac_downstream_nbr; int * mac_upstream_nbr; int mac_current_path; int mac_available_paths; int mac_tvx_capability; int mac_t_max_capability; int mac_frame_status_functions; int smt_transition_time_stamp; int smt_time_stamp; int smt_peer_wrap_flag; int smt_station_status; int smt_remote_disconnect_flag; int smt_cf_state; int smt_ecm_state; int smt_bypass_present; int smt_trace_max_expiration; int smt_stat_rpt_policy; int smt_t_notify; int smt_connection_policy; int smt_config_policy; int smt_config_capabilities; int smt_available_paths; int smt_master_cts; int smt_non_master_cts; int smt_mac_cts; int smt_mib_version_id; int * smt_user_data; int smt_lo_version_id; int smt_hi_version_id; int smt_op_version_id; int * smt_station_id; } ;
struct s_smc {TYPE_17__ os; TYPE_15__* cmd_rsp_virt; TYPE_11__ stats; } ;
struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_34__ {int ls; } ;
struct TYPE_33__ {int ls; } ;
struct TYPE_32__ {int ls; } ;
struct TYPE_31__ {int ls; } ;
struct TYPE_30__ {int ls; } ;
struct TYPE_29__ {int ls; } ;
struct TYPE_27__ {int ls; } ;
struct TYPE_26__ {int ls; } ;
struct TYPE_28__ {int * port_hardware_present; int * port_ler_flag; int * port_pc_withhold; int * port_pcm_state; int * port_connect_state; int * port_ler_alarm; int * port_ler_cutoff; int * port_ler_estimate; int * port_bs_flag; int * port_connection_capabilities; int * port_pmd_class; int * port_available_paths; int * port_mac_placement; int * port_requested_paths; int * port_current_path; int * port_mac_indicated; int * port_connection_policies; int * port_neighbor_type; int * port_my_type; int path_configuration; int path_max_t_req; int path_t_max_lower_bound; int path_tvx_lower_bound; int mac_ma_unitdata_enable; int mac_hardware_present; int mac_ma_unitdata_available; int mac_frame_error_flag; int mac_unda_flag; int mac_da_flag; int mac_rmt_state; int mac_frame_error_ratio; int mac_frame_error_threshold; int mac_tvx_value; int mac_t_max; int mac_t_neg; int mac_t_req; int mac_smt_address; int mac_downstream_port_type; int mac_requested_paths; int mac_dup_address_test; int mac_old_downstream_nbr; int mac_old_upstream_nbr; int mac_downstream_nbr; int mac_upstream_nbr; int mac_current_path; int mac_available_paths; int mac_tvx_capability; int mac_t_max_capability; int mac_frame_status_functions; TYPE_2__ smt_transition_time_stamp; TYPE_1__ smt_msg_time_stamp; int smt_peer_wrap_flag; int smt_station_status; int smt_remote_disconnect_flag; int smt_cf_state; int smt_ecm_state; int smt_bypass_present; int smt_trace_max_expiration; int smt_stat_rpt_policy; int smt_t_notify; int smt_connection_policy; int smt_config_policy; int smt_config_capabilities; int smt_available_paths; int smt_master_ct; int smt_non_master_ct; int smt_mac_ct; int smt_mib_version_id; int smt_user_data; int smt_lo_version_id; int smt_hi_version_id; int smt_op_version_id; int smt_station_id; } ;
struct TYPE_21__ {TYPE_12__* link_errors; TYPE_10__* lem_rejects; TYPE_9__* lct_rejects; TYPE_8__ lost_cnt; TYPE_7__ error_cnt; TYPE_6__ transmit_cnt; TYPE_5__ copied_cnt; TYPE_4__ frame_cnt; } ;
struct TYPE_22__ {TYPE_13__ cntrs; } ;
struct TYPE_23__ {TYPE_14__ cntrs_get; TYPE_3__ smt_mib_get; } ;
struct TYPE_20__ {int ls; } ;
struct TYPE_18__ {int ls; } ;


 int FDDI_K_ALEN ;
 int memcpy (int *,int *,int) ;
 struct s_smc* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *skfp_ctl_get_stats(struct net_device *dev)
{
 struct s_smc *bp = netdev_priv(dev);



 bp->os.MacStat.port_bs_flag[0] = 0x1234;
 bp->os.MacStat.port_bs_flag[1] = 0x5678;
 return (struct net_device_stats *)&bp->os.MacStat;
}
