
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *xgbe_phy_speed_string(int speed)
{
 switch (speed) {
 case 132:
  return "100Mbps";
 case 131:
  return "1Gbps";
 case 129:
  return "2.5Gbps";
 case 130:
  return "10Gbps";
 case 128:
  return "Unknown";
 default:
  return "Unsupported";
 }
}
