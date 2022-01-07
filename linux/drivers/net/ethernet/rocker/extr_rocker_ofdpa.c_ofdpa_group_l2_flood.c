
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ofdpa_port {int dummy; } ;
typedef int __be16 ;


 int ofdpa_group_l2_fan_out (struct ofdpa_port*,int,int ,int const*,int ) ;

__attribute__((used)) static int ofdpa_group_l2_flood(struct ofdpa_port *ofdpa_port,
    int flags, __be16 vlan_id,
    u8 group_count, const u32 *group_ids,
    u32 group_id)
{
 return ofdpa_group_l2_fan_out(ofdpa_port, flags,
          group_count, group_ids,
          group_id);
}
