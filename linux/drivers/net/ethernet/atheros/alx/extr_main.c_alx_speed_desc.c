
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alx_hw {int duplex; int link_speed; } ;







 int alx_speed_to_ethadv (int ,int ) ;

__attribute__((used)) static const char *alx_speed_desc(struct alx_hw *hw)
{
 switch (alx_speed_to_ethadv(hw->link_speed, hw->duplex)) {
 case 132:
  return "1 Gbps Full";
 case 131:
  return "100 Mbps Full";
 case 130:
  return "100 Mbps Half";
 case 129:
  return "10 Mbps Full";
 case 128:
  return "10 Mbps Half";
 default:
  return "Unknown speed";
 }
}
