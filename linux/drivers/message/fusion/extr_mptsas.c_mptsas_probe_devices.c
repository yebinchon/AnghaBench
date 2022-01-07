
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mptsas_phyinfo {int dummy; } ;
struct mptsas_devinfo {int handle; int device_info; int flags; } ;
typedef int MPT_ADAPTER ;


 int MPI_SAS_DEVICE0_FLAGS_DEVICE_MAPPED ;
 int MPI_SAS_DEVICE0_FLAGS_DEVICE_PRESENT ;
 int MPI_SAS_DEVICE_INFO_SATA_DEVICE ;
 int MPI_SAS_DEVICE_INFO_SSP_TARGET ;
 int MPI_SAS_DEVICE_INFO_STP_TARGET ;
 int MPI_SAS_DEVICE_PGAD_FORM_GET_NEXT_HANDLE ;
 int mptsas_add_end_device (int *,struct mptsas_phyinfo*) ;
 scalar_t__ mptsas_get_rphy (struct mptsas_phyinfo*) ;
 struct mptsas_phyinfo* mptsas_refreshing_device_handles (int *,struct mptsas_devinfo*) ;
 int mptsas_sas_device_pg0 (int *,struct mptsas_devinfo*,int ,int) ;

__attribute__((used)) static void
mptsas_probe_devices(MPT_ADAPTER *ioc)
{
 u16 handle;
 struct mptsas_devinfo sas_device;
 struct mptsas_phyinfo *phy_info;

 handle = 0xFFFF;
 while (!(mptsas_sas_device_pg0(ioc, &sas_device,
     MPI_SAS_DEVICE_PGAD_FORM_GET_NEXT_HANDLE, handle))) {

  handle = sas_device.handle;

  if ((sas_device.device_info &
       (MPI_SAS_DEVICE_INFO_SSP_TARGET |
        MPI_SAS_DEVICE_INFO_STP_TARGET |
        MPI_SAS_DEVICE_INFO_SATA_DEVICE)) == 0)
   continue;



  if (!(sas_device.flags & MPI_SAS_DEVICE0_FLAGS_DEVICE_PRESENT)
   || !(sas_device.flags &
   MPI_SAS_DEVICE0_FLAGS_DEVICE_MAPPED))
   continue;

  phy_info = mptsas_refreshing_device_handles(ioc, &sas_device);
  if (!phy_info)
   continue;

  if (mptsas_get_rphy(phy_info))
   continue;

  mptsas_add_end_device(ioc, phy_info);
 }
}
