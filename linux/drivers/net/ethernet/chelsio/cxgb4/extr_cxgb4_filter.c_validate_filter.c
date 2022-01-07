
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_7__ {scalar_t__ fcoe; scalar_t__ iport; scalar_t__ tos; scalar_t__ ethtype; scalar_t__ macidx; scalar_t__ matchtype; scalar_t__ frag; scalar_t__ proto; scalar_t__ pfvf_vld; scalar_t__ ovlan_vld; scalar_t__ encap_vld; scalar_t__ ivlan_vld; int pf; int vf; } ;
struct TYPE_6__ {int pf; int vf; int ovlan_vld; int pfvf_vld; int encap_vld; int ivlan_vld; int proto; int frag; int matchtype; int macidx; int ethtype; int tos; int iport; int fcoe; } ;
struct ch_filter_specification {scalar_t__ action; scalar_t__ eport; scalar_t__ newvlan; TYPE_3__ val; TYPE_2__ mask; scalar_t__ hash; } ;
struct TYPE_5__ {int ingress_config; int filter_mask; int vlan_pri_map; } ;
struct TYPE_8__ {scalar_t__ nports; int chip; TYPE_1__ tp; } ;
struct adapter {TYPE_4__ params; } ;


 scalar_t__ CHELSIO_CHIP_VERSION (int ) ;
 scalar_t__ CHELSIO_T6 ;
 int EOPNOTSUPP ;
 int ERANGE ;
 int ETHERTYPE_F ;
 int FCOE_F ;
 scalar_t__ FILTER_SWITCH ;
 int FRAGMENTATION_F ;
 int MACMATCH_F ;
 int MPSHITTYPE_F ;
 int PORT_F ;
 int PROTOCOL_F ;
 int TOS_F ;
 int VLAN_F ;
 scalar_t__ VLAN_REMOVE ;
 scalar_t__ VLAN_REWRITE ;
 int VNIC_F ;
 int VNIC_ID_F ;
 scalar_t__ is_field_set (scalar_t__,int ) ;
 scalar_t__ is_t4 (int ) ;
 struct adapter* netdev2adap (struct net_device*) ;
 scalar_t__ unsupported (int,int,scalar_t__,int ) ;

__attribute__((used)) static int validate_filter(struct net_device *dev,
      struct ch_filter_specification *fs)
{
 struct adapter *adapter = netdev2adap(dev);
 u32 fconf, iconf;


 iconf = adapter->params.tp.ingress_config;
 fconf = fs->hash ? adapter->params.tp.filter_mask :
      adapter->params.tp.vlan_pri_map;

 if (unsupported(fconf, FCOE_F, fs->val.fcoe, fs->mask.fcoe) ||
     unsupported(fconf, PORT_F, fs->val.iport, fs->mask.iport) ||
     unsupported(fconf, TOS_F, fs->val.tos, fs->mask.tos) ||
     unsupported(fconf, ETHERTYPE_F, fs->val.ethtype,
   fs->mask.ethtype) ||
     unsupported(fconf, MACMATCH_F, fs->val.macidx, fs->mask.macidx) ||
     unsupported(fconf, MPSHITTYPE_F, fs->val.matchtype,
   fs->mask.matchtype) ||
     unsupported(fconf, FRAGMENTATION_F, fs->val.frag, fs->mask.frag) ||
     unsupported(fconf, PROTOCOL_F, fs->val.proto, fs->mask.proto) ||
     unsupported(fconf, VNIC_ID_F, fs->val.pfvf_vld,
   fs->mask.pfvf_vld) ||
     unsupported(fconf, VNIC_ID_F, fs->val.ovlan_vld,
   fs->mask.ovlan_vld) ||
     unsupported(fconf, VNIC_ID_F, fs->val.encap_vld,
   fs->mask.encap_vld) ||
     unsupported(fconf, VLAN_F, fs->val.ivlan_vld, fs->mask.ivlan_vld))
  return -EOPNOTSUPP;
 if ((is_field_set(fs->val.pfvf_vld, fs->mask.pfvf_vld) &&
      is_field_set(fs->val.ovlan_vld, fs->mask.ovlan_vld)) ||
     (is_field_set(fs->val.pfvf_vld, fs->mask.pfvf_vld) &&
      is_field_set(fs->val.encap_vld, fs->mask.encap_vld)) ||
     (is_field_set(fs->val.ovlan_vld, fs->mask.ovlan_vld) &&
      is_field_set(fs->val.encap_vld, fs->mask.encap_vld)))
  return -EOPNOTSUPP;
 if (unsupported(iconf, VNIC_F, fs->val.pfvf_vld, fs->mask.pfvf_vld) ||
     (is_field_set(fs->val.ovlan_vld, fs->mask.ovlan_vld) &&
      (iconf & VNIC_F)))
  return -EOPNOTSUPP;
 if (fs->val.pf > 0x7 || fs->val.vf > 0x7f)
  return -ERANGE;
 fs->mask.pf &= 0x7;
 fs->mask.vf &= 0x7f;





 if (fs->action == FILTER_SWITCH &&
     fs->eport >= adapter->params.nports)
  return -ERANGE;


 if (fs->val.iport >= adapter->params.nports)
  return -ERANGE;


 if (is_t4(adapter->params.chip) &&
     fs->action == FILTER_SWITCH &&
     (fs->newvlan == VLAN_REMOVE ||
      fs->newvlan == VLAN_REWRITE))
  return -EOPNOTSUPP;

 if (fs->val.encap_vld &&
     CHELSIO_CHIP_VERSION(adapter->params.chip) < CHELSIO_T6)
  return -EOPNOTSUPP;
 return 0;
}
