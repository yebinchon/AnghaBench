
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef enum nfp_flower_cmsg_port_vnic_type { ____Placeholder_nfp_flower_cmsg_port_vnic_type } nfp_flower_cmsg_port_vnic_type ;


 int FIELD_PREP (int ,int) ;
 int NFP_FLOWER_CMSG_PORT_PCI ;
 int NFP_FLOWER_CMSG_PORT_PCIE_Q ;
 int NFP_FLOWER_CMSG_PORT_TYPE ;
 int NFP_FLOWER_CMSG_PORT_TYPE_PCIE_PORT ;
 int NFP_FLOWER_CMSG_PORT_VNIC ;
 int NFP_FLOWER_CMSG_PORT_VNIC_TYPE ;

__attribute__((used)) static inline u32
nfp_flower_cmsg_pcie_port(u8 nfp_pcie, enum nfp_flower_cmsg_port_vnic_type type,
     u8 vnic, u8 q)
{
 return FIELD_PREP(NFP_FLOWER_CMSG_PORT_PCI, nfp_pcie) |
  FIELD_PREP(NFP_FLOWER_CMSG_PORT_VNIC_TYPE, type) |
  FIELD_PREP(NFP_FLOWER_CMSG_PORT_VNIC, vnic) |
  FIELD_PREP(NFP_FLOWER_CMSG_PORT_PCIE_Q, q) |
  FIELD_PREP(NFP_FLOWER_CMSG_PORT_TYPE,
      NFP_FLOWER_CMSG_PORT_TYPE_PCIE_PORT);
}
