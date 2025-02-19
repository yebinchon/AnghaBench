
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int s_addr; } ;
struct TYPE_7__ {TYPE_2__ sin_addr; } ;
struct TYPE_8__ {TYPE_3__ sin; } ;
struct vxlan_config {int flags; int dst_port; TYPE_4__ saddr; int label; int ttl; } ;
struct vxlan_dev {struct vxlan_config cfg; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int addr4; } ;
struct mlxsw_sp_nve_config {int learning_en; int udp_dport; TYPE_1__ ul_sip; int ul_proto; int ul_tb_id; int flowlabel; int ttl; int type; } ;
struct mlxsw_sp_nve {int dummy; } ;


 int MLXSW_SP_L3_PROTO_IPV4 ;
 int MLXSW_SP_NVE_TYPE_VXLAN ;
 int RT_TABLE_MAIN ;
 int VXLAN_F_LEARN ;
 struct vxlan_dev* netdev_priv (struct net_device const*) ;

__attribute__((used)) static void mlxsw_sp_nve_vxlan_config(const struct mlxsw_sp_nve *nve,
          const struct net_device *dev,
          struct mlxsw_sp_nve_config *config)
{
 struct vxlan_dev *vxlan = netdev_priv(dev);
 struct vxlan_config *cfg = &vxlan->cfg;

 config->type = MLXSW_SP_NVE_TYPE_VXLAN;
 config->ttl = cfg->ttl;
 config->flowlabel = cfg->label;
 config->learning_en = cfg->flags & VXLAN_F_LEARN ? 1 : 0;
 config->ul_tb_id = RT_TABLE_MAIN;
 config->ul_proto = MLXSW_SP_L3_PROTO_IPV4;
 config->ul_sip.addr4 = cfg->saddr.sin.sin_addr.s_addr;
 config->udp_dport = cfg->dst_port;
}
