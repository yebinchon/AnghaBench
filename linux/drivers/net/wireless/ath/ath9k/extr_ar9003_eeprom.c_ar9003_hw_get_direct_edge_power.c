
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct cal_ctl_data_5g {int * ctlEdges; } ;
struct cal_ctl_data_2g {int * ctlEdges; } ;
struct ar9300_eeprom {struct cal_ctl_data_5g* ctlPowerData_5G; struct cal_ctl_data_2g* ctlPowerData_2G; } ;


 int CTL_EDGE_TPOWER (int ) ;

__attribute__((used)) static u16 ar9003_hw_get_direct_edge_power(struct ar9300_eeprom *eep,
        int idx,
        int edge,
        bool is2GHz)
{
 struct cal_ctl_data_2g *ctl_2g = eep->ctlPowerData_2G;
 struct cal_ctl_data_5g *ctl_5g = eep->ctlPowerData_5G;

 if (is2GHz)
  return CTL_EDGE_TPOWER(ctl_2g[idx].ctlEdges[edge]);
 else
  return CTL_EDGE_TPOWER(ctl_5g[idx].ctlEdges[edge]);
}
