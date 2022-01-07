
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int mc_type; } ;
__attribute__((used)) static char *mc_name(struct be_adapter *adapter)
{
 char *str = "";

 switch (adapter->mc_type) {
 case 131:
  str = "UMC";
  break;
 case 133:
  str = "FLEX10";
  break;
 case 129:
  str = "vNIC-1";
  break;
 case 130:
  str = "nPAR";
  break;
 case 132:
  str = "UFP";
  break;
 case 128:
  str = "vNIC-2";
  break;
 default:
  str = "";
 }

 return str;
}
