
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s8 ;







const char *bond_slave_link_status(s8 link)
{
 switch (link) {
 case 128:
  return "up";
 case 129:
  return "going down";
 case 130:
  return "down";
 case 131:
  return "going back";
 default:
  return "unknown";
 }
}
