
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_hwfn {int dummy; } ;
struct TYPE_2__ {scalar_t__ ip_version; int syn_phy_addr_hi; int syn_phy_addr_lo; int syn_ip_payload_length; int flags; int connect_mode; int rcv_wnd_scale; int mss; int tos_or_tc; int ttl; int flow_label; int vlan_id; int remote_port; int remote_ip; int local_port; int local_ip; int remote_mac_addr_hi; int remote_mac_addr_mid; int remote_mac_addr_lo; int local_mac_addr_hi; int local_mac_addr_mid; int local_mac_addr_lo; } ;
struct iwarp_tcp_offload_ramrod_data {TYPE_1__ tcp; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,int ,int ,...) ;
 int QED_MSG_RDMA ;
 scalar_t__ TCP_IPV4 ;

__attribute__((used)) static void
qed_iwarp_print_tcp_ramrod(struct qed_hwfn *p_hwfn,
      struct iwarp_tcp_offload_ramrod_data *p_tcp_ramrod)
{
 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "local_mac=%x %x %x, remote_mac=%x %x %x\n",
     p_tcp_ramrod->tcp.local_mac_addr_lo,
     p_tcp_ramrod->tcp.local_mac_addr_mid,
     p_tcp_ramrod->tcp.local_mac_addr_hi,
     p_tcp_ramrod->tcp.remote_mac_addr_lo,
     p_tcp_ramrod->tcp.remote_mac_addr_mid,
     p_tcp_ramrod->tcp.remote_mac_addr_hi);

 if (p_tcp_ramrod->tcp.ip_version == TCP_IPV4) {
  DP_VERBOSE(p_hwfn, QED_MSG_RDMA,
      "local_ip=%pI4h:%x, remote_ip=%pI4h:%x, vlan=%x\n",
      p_tcp_ramrod->tcp.local_ip,
      p_tcp_ramrod->tcp.local_port,
      p_tcp_ramrod->tcp.remote_ip,
      p_tcp_ramrod->tcp.remote_port,
      p_tcp_ramrod->tcp.vlan_id);
 } else {
  DP_VERBOSE(p_hwfn, QED_MSG_RDMA,
      "local_ip=%pI6:%x, remote_ip=%pI6:%x, vlan=%x\n",
      p_tcp_ramrod->tcp.local_ip,
      p_tcp_ramrod->tcp.local_port,
      p_tcp_ramrod->tcp.remote_ip,
      p_tcp_ramrod->tcp.remote_port,
      p_tcp_ramrod->tcp.vlan_id);
 }

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA,
     "flow_label=%x, ttl=%x, tos_or_tc=%x, mss=%x, rcv_wnd_scale=%x, connect_mode=%x, flags=%x\n",
     p_tcp_ramrod->tcp.flow_label,
     p_tcp_ramrod->tcp.ttl,
     p_tcp_ramrod->tcp.tos_or_tc,
     p_tcp_ramrod->tcp.mss,
     p_tcp_ramrod->tcp.rcv_wnd_scale,
     p_tcp_ramrod->tcp.connect_mode,
     p_tcp_ramrod->tcp.flags);

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "syn_ip_payload_length=%x, lo=%x, hi=%x\n",
     p_tcp_ramrod->tcp.syn_ip_payload_length,
     p_tcp_ramrod->tcp.syn_phy_addr_lo,
     p_tcp_ramrod->tcp.syn_phy_addr_hi);
}
