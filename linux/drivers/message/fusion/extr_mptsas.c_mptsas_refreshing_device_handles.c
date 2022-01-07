
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mptsas_portinfo {int num_phys; TYPE_2__* phy_info; } ;
struct mptsas_phyinfo {struct mptsas_portinfo* portinfo; } ;
struct mptsas_devinfo {scalar_t__ sas_address; int handle_enclosure; int handle_parent; int handle; int id; int channel; } ;
struct TYPE_8__ {int sas_topology_mutex; } ;
struct TYPE_6__ {scalar_t__ sas_address; int handle_enclosure; int handle_parent; int handle; int id; int channel; } ;
struct TYPE_7__ {TYPE_1__ attached; } ;
typedef TYPE_3__ MPT_ADAPTER ;


 struct mptsas_phyinfo* mptsas_find_phyinfo_by_sas_address (TYPE_3__*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct mptsas_phyinfo *
mptsas_refreshing_device_handles(MPT_ADAPTER *ioc,
 struct mptsas_devinfo *sas_device)
{
 struct mptsas_phyinfo *phy_info;
 struct mptsas_portinfo *port_info;
 int i;

 phy_info = mptsas_find_phyinfo_by_sas_address(ioc,
     sas_device->sas_address);
 if (!phy_info)
  goto out;
 port_info = phy_info->portinfo;
 if (!port_info)
  goto out;
 mutex_lock(&ioc->sas_topology_mutex);
 for (i = 0; i < port_info->num_phys; i++) {
  if (port_info->phy_info[i].attached.sas_address !=
   sas_device->sas_address)
   continue;
  port_info->phy_info[i].attached.channel = sas_device->channel;
  port_info->phy_info[i].attached.id = sas_device->id;
  port_info->phy_info[i].attached.sas_address =
      sas_device->sas_address;
  port_info->phy_info[i].attached.handle = sas_device->handle;
  port_info->phy_info[i].attached.handle_parent =
      sas_device->handle_parent;
  port_info->phy_info[i].attached.handle_enclosure =
      sas_device->handle_enclosure;
 }
 mutex_unlock(&ioc->sas_topology_mutex);
 out:
 return phy_info;
}
