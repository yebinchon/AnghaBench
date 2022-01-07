
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cpsw_ale_params {int ale_ageout; int major_ver_mask; int ale_entries; int ale_ports; scalar_t__ nu_switch_ale; int dev; scalar_t__ ale_regs; } ;
struct cpsw_ale {int ageout; int version; struct cpsw_ale_params params; int vlan_field_bits; int port_num_bits; int port_mask_bits; } ;
struct TYPE_2__ {int offset; scalar_t__ shift; int bits; } ;


 scalar_t__ ALE_IDVER ;
 size_t ALE_PORT_UNKNOWN_MCAST_FLOOD ;
 size_t ALE_PORT_UNKNOWN_REG_MCAST_FLOOD ;
 size_t ALE_PORT_UNKNOWN_VLAN_MEMBER ;
 size_t ALE_PORT_UNTAGGED_EGRESS ;
 scalar_t__ ALE_STATUS ;
 int ALE_STATUS_SIZE_MASK ;
 int ALE_TABLE_SIZE_DEFAULT ;
 int ALE_TABLE_SIZE_MULTIPLIER ;
 int ALE_UNKNOWNVLAN_FORCE_UNTAG_EGRESS ;
 int ALE_UNKNOWNVLAN_MEMBER ;
 int ALE_UNKNOWNVLAN_REG_MCAST_FLOOD ;
 int ALE_UNKNOWNVLAN_UNREG_MCAST_FLOOD ;
 int ALE_VERSION_MAJOR (int,int) ;
 int ALE_VERSION_MINOR (int) ;
 int GFP_KERNEL ;
 int HZ ;
 TYPE_1__* ale_controls ;
 int dev_info (int ,char*,int,...) ;
 struct cpsw_ale* devm_kzalloc (int ,int,int ) ;
 int order_base_2 (int ) ;
 int readl_relaxed (scalar_t__) ;

struct cpsw_ale *cpsw_ale_create(struct cpsw_ale_params *params)
{
 struct cpsw_ale *ale;
 u32 rev, ale_entries;

 ale = devm_kzalloc(params->dev, sizeof(*ale), GFP_KERNEL);
 if (!ale)
  return ((void*)0);

 ale->params = *params;
 ale->ageout = ale->params.ale_ageout * HZ;

 rev = readl_relaxed(ale->params.ale_regs + ALE_IDVER);
 if (!ale->params.major_ver_mask)
  ale->params.major_ver_mask = 0xff;
 ale->version =
  (ALE_VERSION_MAJOR(rev, ale->params.major_ver_mask) << 8) |
   ALE_VERSION_MINOR(rev);
 dev_info(ale->params.dev, "initialized cpsw ale version %d.%d\n",
   ALE_VERSION_MAJOR(rev, ale->params.major_ver_mask),
   ALE_VERSION_MINOR(rev));

 if (!ale->params.ale_entries) {
  ale_entries =
   readl_relaxed(ale->params.ale_regs + ALE_STATUS) &
   ALE_STATUS_SIZE_MASK;
  if (!ale_entries)
   ale_entries = ALE_TABLE_SIZE_DEFAULT;
  else
   ale_entries *= ALE_TABLE_SIZE_MULTIPLIER;
  ale->params.ale_entries = ale_entries;
 }
 dev_info(ale->params.dev,
   "ALE Table size %ld\n", ale->params.ale_entries);


 ale->port_mask_bits = ale->params.ale_ports;
 ale->port_num_bits = order_base_2(ale->params.ale_ports);
 ale->vlan_field_bits = ale->params.ale_ports;




 if (ale->params.nu_switch_ale) {




  ale_controls[ALE_PORT_UNKNOWN_VLAN_MEMBER].bits =
     ale->params.ale_ports;
  ale_controls[ALE_PORT_UNKNOWN_VLAN_MEMBER].offset =
     ALE_UNKNOWNVLAN_MEMBER;
  ale_controls[ALE_PORT_UNKNOWN_MCAST_FLOOD].bits =
     ale->params.ale_ports;
  ale_controls[ALE_PORT_UNKNOWN_MCAST_FLOOD].shift = 0;
  ale_controls[ALE_PORT_UNKNOWN_MCAST_FLOOD].offset =
     ALE_UNKNOWNVLAN_UNREG_MCAST_FLOOD;
  ale_controls[ALE_PORT_UNKNOWN_REG_MCAST_FLOOD].bits =
     ale->params.ale_ports;
  ale_controls[ALE_PORT_UNKNOWN_REG_MCAST_FLOOD].shift = 0;
  ale_controls[ALE_PORT_UNKNOWN_REG_MCAST_FLOOD].offset =
     ALE_UNKNOWNVLAN_REG_MCAST_FLOOD;
  ale_controls[ALE_PORT_UNTAGGED_EGRESS].bits =
     ale->params.ale_ports;
  ale_controls[ALE_PORT_UNTAGGED_EGRESS].shift = 0;
  ale_controls[ALE_PORT_UNTAGGED_EGRESS].offset =
     ALE_UNKNOWNVLAN_FORCE_UNTAG_EGRESS;
 }

 return ale;
}
