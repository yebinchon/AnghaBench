
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int port; int ip; int mac; } ;
struct TYPE_3__ {int port; int ip; int mac; } ;
struct qed_iscsi_params_offload {int ack_frequency; int da_timeout_value; int rcv_wnd_scale; int snd_wnd_scale; int mss; int local_port; int remote_port; int tos_or_tc; int ttl; int initial_rcv_wnd; int max_rt_time; int ka_interval; int ka_timeout; int flow_label; int rt_cnt; int ka_probe_cnt; int snd_wnd_probe_cnt; int dup_ack_cnt; int rt_timeout_delta; int ka_timeout_delta; int total_rt; int ts_recent_age; int ts_recent; int rtt_var; int srtt; int ss_thresh; int cwnd; int snd_wl1; int rcv_wnd; int snd_wnd; int snd_max; int snd_next; int snd_una; int rcv_next; int dup_ack_theshold; int ka_max_probe_cnt; int default_cq; int ip_version; int tcp_flags; int vlan_id; int initial_ack; int sq_pbl_addr; int layer_code; TYPE_2__ dst; TYPE_1__ src; } ;
struct qed_iscsi_conn {int offl_flags; int ack_frequency; int da_timeout_value; int rcv_wnd_scale; int snd_wnd_scale; int mss; int local_port; int remote_port; int tos_or_tc; int ttl; int initial_rcv_wnd; int max_rt_time; int ka_interval; int ka_timeout; int flow_label; int rt_cnt; int ka_probe_cnt; int snd_wnd_probe_cnt; int dup_ack_cnt; int rt_timeout_delta; int ka_timeout_delta; int total_rt; int ts_recent_age; int ts_recent; int rtt_var; int srtt; int ss_thresh; int cwnd; int snd_wl1; int rcv_wnd; int snd_wnd; int snd_max; int snd_next; int snd_una; int rcv_next; int dup_ack_theshold; int ka_max_probe_cnt; int default_cq; int ip_version; int tcp_flags; int vlan_id; int initial_ack; int sq_pbl_addr; int layer_code; int remote_ip; int local_ip; int remote_mac; int local_mac; } ;
struct qed_hash_iscsi_con {struct qed_iscsi_conn* con; } ;
struct qed_dev {int dummy; } ;


 int DP_NOTICE (struct qed_dev*,char*,int ) ;
 int EINVAL ;
 int QED_AFFIN_HWFN (struct qed_dev*) ;
 int QED_SPQ_MODE_EBLOCK ;
 int ether_addr_copy (int ,int ) ;
 int memcpy (int ,int ,int) ;
 struct qed_hash_iscsi_con* qed_iscsi_get_hash (struct qed_dev*,int ) ;
 int qed_sp_iscsi_conn_offload (int ,struct qed_iscsi_conn*,int ,int *) ;

__attribute__((used)) static int qed_iscsi_offload_conn(struct qed_dev *cdev,
      u32 handle,
      struct qed_iscsi_params_offload *conn_info)
{
 struct qed_hash_iscsi_con *hash_con;
 struct qed_iscsi_conn *con;

 hash_con = qed_iscsi_get_hash(cdev, handle);
 if (!hash_con) {
  DP_NOTICE(cdev, "Failed to find connection for handle %d\n",
     handle);
  return -EINVAL;
 }


 con = hash_con->con;

 ether_addr_copy(con->local_mac, conn_info->src.mac);
 ether_addr_copy(con->remote_mac, conn_info->dst.mac);
 memcpy(con->local_ip, conn_info->src.ip, sizeof(con->local_ip));
 memcpy(con->remote_ip, conn_info->dst.ip, sizeof(con->remote_ip));
 con->local_port = conn_info->src.port;
 con->remote_port = conn_info->dst.port;

 con->layer_code = conn_info->layer_code;
 con->sq_pbl_addr = conn_info->sq_pbl_addr;
 con->initial_ack = conn_info->initial_ack;
 con->vlan_id = conn_info->vlan_id;
 con->tcp_flags = conn_info->tcp_flags;
 con->ip_version = conn_info->ip_version;
 con->default_cq = conn_info->default_cq;
 con->ka_max_probe_cnt = conn_info->ka_max_probe_cnt;
 con->dup_ack_theshold = conn_info->dup_ack_theshold;
 con->rcv_next = conn_info->rcv_next;
 con->snd_una = conn_info->snd_una;
 con->snd_next = conn_info->snd_next;
 con->snd_max = conn_info->snd_max;
 con->snd_wnd = conn_info->snd_wnd;
 con->rcv_wnd = conn_info->rcv_wnd;
 con->snd_wl1 = conn_info->snd_wl1;
 con->cwnd = conn_info->cwnd;
 con->ss_thresh = conn_info->ss_thresh;
 con->srtt = conn_info->srtt;
 con->rtt_var = conn_info->rtt_var;
 con->ts_recent = conn_info->ts_recent;
 con->ts_recent_age = conn_info->ts_recent_age;
 con->total_rt = conn_info->total_rt;
 con->ka_timeout_delta = conn_info->ka_timeout_delta;
 con->rt_timeout_delta = conn_info->rt_timeout_delta;
 con->dup_ack_cnt = conn_info->dup_ack_cnt;
 con->snd_wnd_probe_cnt = conn_info->snd_wnd_probe_cnt;
 con->ka_probe_cnt = conn_info->ka_probe_cnt;
 con->rt_cnt = conn_info->rt_cnt;
 con->flow_label = conn_info->flow_label;
 con->ka_timeout = conn_info->ka_timeout;
 con->ka_interval = conn_info->ka_interval;
 con->max_rt_time = conn_info->max_rt_time;
 con->initial_rcv_wnd = conn_info->initial_rcv_wnd;
 con->ttl = conn_info->ttl;
 con->tos_or_tc = conn_info->tos_or_tc;
 con->remote_port = conn_info->remote_port;
 con->local_port = conn_info->local_port;
 con->mss = conn_info->mss;
 con->snd_wnd_scale = conn_info->snd_wnd_scale;
 con->rcv_wnd_scale = conn_info->rcv_wnd_scale;
 con->da_timeout_value = conn_info->da_timeout_value;
 con->ack_frequency = conn_info->ack_frequency;


 con->offl_flags = 0x1;

 return qed_sp_iscsi_conn_offload(QED_AFFIN_HWFN(cdev), con,
      QED_SPQ_MODE_EBLOCK, ((void*)0));
}
