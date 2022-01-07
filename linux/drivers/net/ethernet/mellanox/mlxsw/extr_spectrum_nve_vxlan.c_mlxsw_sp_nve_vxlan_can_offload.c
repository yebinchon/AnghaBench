
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sa_family; } ;
struct TYPE_4__ {TYPE_1__ sa; } ;
struct vxlan_config {int tos; int flags; scalar_t__ ttl; scalar_t__ label; scalar_t__ port_max; scalar_t__ port_min; scalar_t__ remote_ifindex; TYPE_2__ saddr; int remote_ip; } ;
struct vxlan_dev {struct vxlan_config cfg; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_nve {int dummy; } ;


 scalar_t__ AF_INET ;
 int MLXSW_SP_NVE_VXLAN_SUPPORTED_FLAGS ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int VXLAN_F_TTL_INHERIT ;
 int VXLAN_F_UDP_ZERO_CSUM_TX ;
 struct vxlan_dev* netdev_priv (struct net_device const*) ;
 scalar_t__ vxlan_addr_any (TYPE_2__*) ;
 scalar_t__ vxlan_addr_multicast (int *) ;

__attribute__((used)) static bool mlxsw_sp_nve_vxlan_can_offload(const struct mlxsw_sp_nve *nve,
        const struct net_device *dev,
        struct netlink_ext_ack *extack)
{
 struct vxlan_dev *vxlan = netdev_priv(dev);
 struct vxlan_config *cfg = &vxlan->cfg;

 if (cfg->saddr.sa.sa_family != AF_INET) {
  NL_SET_ERR_MSG_MOD(extack, "VxLAN: Only IPv4 underlay is supported");
  return 0;
 }

 if (vxlan_addr_multicast(&cfg->remote_ip)) {
  NL_SET_ERR_MSG_MOD(extack, "VxLAN: Multicast destination IP is not supported");
  return 0;
 }

 if (vxlan_addr_any(&cfg->saddr)) {
  NL_SET_ERR_MSG_MOD(extack, "VxLAN: Source address must be specified");
  return 0;
 }

 if (cfg->remote_ifindex) {
  NL_SET_ERR_MSG_MOD(extack, "VxLAN: Local interface is not supported");
  return 0;
 }

 if (cfg->port_min || cfg->port_max) {
  NL_SET_ERR_MSG_MOD(extack, "VxLAN: Only default UDP source port range is supported");
  return 0;
 }

 if (cfg->tos != 1) {
  NL_SET_ERR_MSG_MOD(extack, "VxLAN: TOS must be configured to inherit");
  return 0;
 }

 if (cfg->flags & VXLAN_F_TTL_INHERIT) {
  NL_SET_ERR_MSG_MOD(extack, "VxLAN: TTL must not be configured to inherit");
  return 0;
 }

 if (!(cfg->flags & VXLAN_F_UDP_ZERO_CSUM_TX)) {
  NL_SET_ERR_MSG_MOD(extack, "VxLAN: UDP checksum is not supported");
  return 0;
 }

 if (cfg->flags & ~MLXSW_SP_NVE_VXLAN_SUPPORTED_FLAGS) {
  NL_SET_ERR_MSG_MOD(extack, "VxLAN: Unsupported flag");
  return 0;
 }

 if (cfg->ttl == 0) {
  NL_SET_ERR_MSG_MOD(extack, "VxLAN: TTL must not be configured to 0");
  return 0;
 }

 if (cfg->label != 0) {
  NL_SET_ERR_MSG_MOD(extack, "VxLAN: Flow label must be configured to 0");
  return 0;
 }

 return 1;
}
