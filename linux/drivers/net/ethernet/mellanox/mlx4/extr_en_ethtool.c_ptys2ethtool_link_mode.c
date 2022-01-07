
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptys2ethtool_config {unsigned long* supported; unsigned long* advertised; } ;
typedef enum ethtool_report { ____Placeholder_ethtool_report } ethtool_report ;





__attribute__((used)) static unsigned long *ptys2ethtool_link_mode(struct ptys2ethtool_config *cfg,
          enum ethtool_report report)
{
 switch (report) {
 case 128:
  return cfg->supported;
 case 129:
  return cfg->advertised;
 }
 return ((void*)0);
}
