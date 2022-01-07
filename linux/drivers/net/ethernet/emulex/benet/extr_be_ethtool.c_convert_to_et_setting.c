
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int interface_type; int cable_type; } ;
struct be_adapter {TYPE_1__ phy; } ;


 int BE_SUPPORTED_SPEED_100MBPS ;
 int BE_SUPPORTED_SPEED_10GBPS ;
 int BE_SUPPORTED_SPEED_10MBPS ;
 int BE_SUPPORTED_SPEED_1GBPS ;
 int BE_SUPPORTED_SPEED_20GBPS ;
 int BE_SUPPORTED_SPEED_40GBPS ;
 int SUPPORTED_10000baseKR_Full ;
 int SUPPORTED_10000baseKX4_Full ;
 int SUPPORTED_10000baseT_Full ;
 int SUPPORTED_1000baseKX_Full ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_20000baseKR2_Full ;
 int SUPPORTED_40000baseCR4_Full ;
 int SUPPORTED_40000baseKR4_Full ;
 int SUPPORTED_40000baseLR4_Full ;
 int SUPPORTED_40000baseSR4_Full ;
 int SUPPORTED_Backplane ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_TP ;

__attribute__((used)) static u32 convert_to_et_setting(struct be_adapter *adapter, u32 if_speeds)
{
 u32 val = 0;

 switch (adapter->phy.interface_type) {
 case 140:
 case 139:
 case 131:
  val |= SUPPORTED_TP;
  if (if_speeds & BE_SUPPORTED_SPEED_1GBPS)
   val |= SUPPORTED_1000baseT_Full;
  if (if_speeds & BE_SUPPORTED_SPEED_100MBPS)
   val |= SUPPORTED_100baseT_Full;
  if (if_speeds & BE_SUPPORTED_SPEED_10MBPS)
   val |= SUPPORTED_10baseT_Full;
  break;
 case 135:
  val |= SUPPORTED_Backplane;
  if (if_speeds & BE_SUPPORTED_SPEED_1GBPS)
   val |= SUPPORTED_1000baseKX_Full;
  if (if_speeds & BE_SUPPORTED_SPEED_10GBPS)
   val |= SUPPORTED_10000baseKX4_Full;
  break;
 case 138:
  val |= SUPPORTED_Backplane;
  if (if_speeds & BE_SUPPORTED_SPEED_10GBPS)
   val |= SUPPORTED_10000baseKR_Full;
  if (if_speeds & BE_SUPPORTED_SPEED_20GBPS)
   val |= SUPPORTED_20000baseKR2_Full;
  break;
 case 136:
  val |= SUPPORTED_Backplane |
    SUPPORTED_10000baseKR_Full;
  break;
 case 137:
  val |= SUPPORTED_Backplane;
  if (if_speeds & BE_SUPPORTED_SPEED_10GBPS)
   val |= SUPPORTED_10000baseKR_Full;
  if (if_speeds & BE_SUPPORTED_SPEED_40GBPS)
   val |= SUPPORTED_40000baseKR4_Full;
  break;
 case 134:
  if (if_speeds & BE_SUPPORTED_SPEED_40GBPS) {
   switch (adapter->phy.cable_type) {
   case 129:
    val |= SUPPORTED_40000baseCR4_Full;
    break;
   case 128:
    val |= SUPPORTED_40000baseLR4_Full;
    break;
   default:
    val |= SUPPORTED_40000baseSR4_Full;
    break;
   }
  }

 case 132:
 case 130:
 case 133:
  val |= SUPPORTED_FIBRE;
  if (if_speeds & BE_SUPPORTED_SPEED_10GBPS)
   val |= SUPPORTED_10000baseT_Full;
  if (if_speeds & BE_SUPPORTED_SPEED_1GBPS)
   val |= SUPPORTED_1000baseT_Full;
  break;
 case 141:
  val |= SUPPORTED_TP;
  if (if_speeds & BE_SUPPORTED_SPEED_10GBPS)
   val |= SUPPORTED_10000baseT_Full;
  if (if_speeds & BE_SUPPORTED_SPEED_1GBPS)
   val |= SUPPORTED_1000baseT_Full;
  if (if_speeds & BE_SUPPORTED_SPEED_100MBPS)
   val |= SUPPORTED_100baseT_Full;
  break;
 default:
  val |= SUPPORTED_TP;
 }

 return val;
}
