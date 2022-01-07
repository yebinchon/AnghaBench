
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_port {int dummy; } ;
struct mptsas_phyinfo {TYPE_1__* port_details; } ;
struct TYPE_2__ {struct sas_port* port; } ;



__attribute__((used)) static inline struct sas_port *
mptsas_get_port(struct mptsas_phyinfo *phy_info)
{
 if (phy_info->port_details)
  return phy_info->port_details->port;
 else
  return ((void*)0);
}
