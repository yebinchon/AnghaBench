
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef enum mlxsw_afa_vlan_vlan_tag_cmd { ____Placeholder_mlxsw_afa_vlan_vlan_tag_cmd } mlxsw_afa_vlan_vlan_tag_cmd ;
typedef enum mlxsw_afa_vlan_cmd { ____Placeholder_mlxsw_afa_vlan_cmd } mlxsw_afa_vlan_cmd ;


 int mlxsw_afa_vlan_ethertype_cmd_set (char*,int) ;
 int mlxsw_afa_vlan_ethertype_set (char*,int ) ;
 int mlxsw_afa_vlan_pcp_cmd_set (char*,int) ;
 int mlxsw_afa_vlan_pcp_set (char*,int ) ;
 int mlxsw_afa_vlan_vid_cmd_set (char*,int) ;
 int mlxsw_afa_vlan_vid_set (char*,int ) ;
 int mlxsw_afa_vlan_vlan_tag_cmd_set (char*,int) ;

__attribute__((used)) static inline void
mlxsw_afa_vlan_pack(char *payload,
      enum mlxsw_afa_vlan_vlan_tag_cmd vlan_tag_cmd,
      enum mlxsw_afa_vlan_cmd vid_cmd, u16 vid,
      enum mlxsw_afa_vlan_cmd pcp_cmd, u8 pcp,
      enum mlxsw_afa_vlan_cmd ethertype_cmd, u8 ethertype)
{
 mlxsw_afa_vlan_vlan_tag_cmd_set(payload, vlan_tag_cmd);
 mlxsw_afa_vlan_vid_cmd_set(payload, vid_cmd);
 mlxsw_afa_vlan_vid_set(payload, vid);
 mlxsw_afa_vlan_pcp_cmd_set(payload, pcp_cmd);
 mlxsw_afa_vlan_pcp_set(payload, pcp);
 mlxsw_afa_vlan_ethertype_cmd_set(payload, ethertype_cmd);
 mlxsw_afa_vlan_ethertype_set(payload, ethertype);
}
