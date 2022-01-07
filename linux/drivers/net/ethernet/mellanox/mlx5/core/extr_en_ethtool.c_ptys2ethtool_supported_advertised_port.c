
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ethtool_link_ksettings {int dummy; } ;


 int AUI ;
 int BNC ;
 int Backplane ;
 int FIBRE ;
 int MII ;
 int MLX5E_1000BASE_CX_SGMII ;
 int MLX5E_1000BASE_KX ;
 int MLX5E_100GBASE_KR4 ;
 int MLX5E_100GBASE_SR4 ;
 int MLX5E_10GBASE_CR ;
 int MLX5E_10GBASE_KR ;
 int MLX5E_10GBASE_KX4 ;
 int MLX5E_10GBASE_SR ;
 int MLX5E_40GBASE_CR4 ;
 int MLX5E_40GBASE_KR4 ;
 int MLX5E_40GBASE_SR4 ;
 int MLX5E_CONNECTOR_TYPE_NUMBER ;
 int MLX5E_PROT_MASK (int ) ;
 int TP ;
 int advertising ;
 int ethtool_link_ksettings_add_link_mode (struct ethtool_link_ksettings*,int ,int ) ;
 int supported ;

__attribute__((used)) static void ptys2ethtool_supported_advertised_port(struct ethtool_link_ksettings *link_ksettings,
         u32 eth_proto_cap,
         u8 connector_type)
{
 if (!connector_type || connector_type >= MLX5E_CONNECTOR_TYPE_NUMBER) {
  if (eth_proto_cap & (MLX5E_PROT_MASK(MLX5E_10GBASE_CR)
       | MLX5E_PROT_MASK(MLX5E_10GBASE_SR)
       | MLX5E_PROT_MASK(MLX5E_40GBASE_CR4)
       | MLX5E_PROT_MASK(MLX5E_40GBASE_SR4)
       | MLX5E_PROT_MASK(MLX5E_100GBASE_SR4)
       | MLX5E_PROT_MASK(MLX5E_1000BASE_CX_SGMII))) {
   ethtool_link_ksettings_add_link_mode(link_ksettings,
            supported,
            FIBRE);
   ethtool_link_ksettings_add_link_mode(link_ksettings,
            advertising,
            FIBRE);
  }

  if (eth_proto_cap & (MLX5E_PROT_MASK(MLX5E_100GBASE_KR4)
       | MLX5E_PROT_MASK(MLX5E_40GBASE_KR4)
       | MLX5E_PROT_MASK(MLX5E_10GBASE_KR)
       | MLX5E_PROT_MASK(MLX5E_10GBASE_KX4)
       | MLX5E_PROT_MASK(MLX5E_1000BASE_KX))) {
   ethtool_link_ksettings_add_link_mode(link_ksettings,
            supported,
            Backplane);
   ethtool_link_ksettings_add_link_mode(link_ksettings,
            advertising,
            Backplane);
  }
  return;
 }

 switch (connector_type) {
 case 128:
  ethtool_link_ksettings_add_link_mode(link_ksettings,
           supported, TP);
  ethtool_link_ksettings_add_link_mode(link_ksettings,
           advertising, TP);
  break;
 case 135:
  ethtool_link_ksettings_add_link_mode(link_ksettings,
           supported, AUI);
  ethtool_link_ksettings_add_link_mode(link_ksettings,
           advertising, AUI);
  break;
 case 134:
  ethtool_link_ksettings_add_link_mode(link_ksettings,
           supported, BNC);
  ethtool_link_ksettings_add_link_mode(link_ksettings,
           advertising, BNC);
  break;
 case 131:
  ethtool_link_ksettings_add_link_mode(link_ksettings,
           supported, MII);
  ethtool_link_ksettings_add_link_mode(link_ksettings,
           advertising, MII);
  break;
 case 132:
  ethtool_link_ksettings_add_link_mode(link_ksettings,
           supported, FIBRE);
  ethtool_link_ksettings_add_link_mode(link_ksettings,
           advertising, FIBRE);
  break;
 case 133:
  ethtool_link_ksettings_add_link_mode(link_ksettings,
           supported, Backplane);
  ethtool_link_ksettings_add_link_mode(link_ksettings,
           advertising, Backplane);
  break;
 case 130:
 case 129:
 default:
  break;
 }
}
