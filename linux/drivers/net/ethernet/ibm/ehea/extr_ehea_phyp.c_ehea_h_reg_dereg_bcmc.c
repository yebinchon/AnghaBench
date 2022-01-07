
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;


 int EHEA_BMASK_SET (int ,int const) ;
 int H_REGBCMC_MACADDR ;
 int H_REGBCMC_PN ;
 int H_REGBCMC_REGTYPE ;
 int H_REGBCMC_VLANID ;
 int ehea_plpar_hcall_norets (int const,int const,int,int,int,int,int ,int ) ;

u64 ehea_h_reg_dereg_bcmc(const u64 adapter_handle, const u16 port_num,
     const u8 reg_type, const u64 mc_mac_addr,
     const u16 vlan_id, const u32 hcall_id)
{
 u64 r5_port_num, r6_reg_type, r7_mc_mac_addr, r8_vlan_id;
 u64 mac_addr = mc_mac_addr >> 16;

 r5_port_num = EHEA_BMASK_SET(H_REGBCMC_PN, port_num);
 r6_reg_type = EHEA_BMASK_SET(H_REGBCMC_REGTYPE, reg_type);
 r7_mc_mac_addr = EHEA_BMASK_SET(H_REGBCMC_MACADDR, mac_addr);
 r8_vlan_id = EHEA_BMASK_SET(H_REGBCMC_VLANID, vlan_id);

 return ehea_plpar_hcall_norets(hcall_id,
           adapter_handle,
           r5_port_num,
           r6_reg_type,
           r7_mc_mac_addr,
           r8_vlan_id,
           0, 0);
}
