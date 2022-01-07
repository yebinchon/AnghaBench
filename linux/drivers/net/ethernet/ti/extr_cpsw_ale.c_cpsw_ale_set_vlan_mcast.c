
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ ale_regs; } ;
struct cpsw_ale {TYPE_1__ params; } ;


 scalar_t__ ALE_VLAN_MASK_MUX (int) ;
 int cpsw_ale_get_vlan_reg_mcast_idx (int *) ;
 int cpsw_ale_get_vlan_unreg_mcast_idx (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cpsw_ale_set_vlan_mcast(struct cpsw_ale *ale, u32 *ale_entry,
        int reg_mcast, int unreg_mcast)
{
 int idx;


 idx = cpsw_ale_get_vlan_reg_mcast_idx(ale_entry);
 writel(reg_mcast, ale->params.ale_regs + ALE_VLAN_MASK_MUX(idx));


 idx = cpsw_ale_get_vlan_unreg_mcast_idx(ale_entry);
 writel(unreg_mcast, ale->params.ale_regs + ALE_VLAN_MASK_MUX(idx));
}
