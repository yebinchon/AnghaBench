
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct mptsas_hotplug_event {int device_info; int event_type; int sas_address; int phy_id; int id; int channel; int handle; } ;
struct fw_event_work {scalar_t__ event_data; int * ioc; } ;
struct TYPE_2__ {int ReasonCode; int SASAddress; int PhyNum; int TargetID; int Bus; int DevHandle; int DeviceInfo; } ;
typedef int MPT_ADAPTER ;
typedef TYPE_1__ EVENT_DATA_SAS_DEVICE_STATUS_CHANGE ;







 int MPI_SAS_DEVICE_INFO_SATA_DEVICE ;
 int MPI_SAS_DEVICE_INFO_SSP_TARGET ;
 int MPI_SAS_DEVICE_INFO_STP_TARGET ;
 int MPI_SAS_OP_CLEAR_NOT_PRESENT ;
 int MPTSAS_ADD_DEVICE ;
 int MPTSAS_DEL_DEVICE ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 int memset (struct mptsas_hotplug_event*,int ,int) ;
 int mptbase_sas_persist_operation (int *,int ) ;
 int mptsas_free_fw_event (int *,struct fw_event_work*) ;
 int mptsas_hotplug_work (int *,struct fw_event_work*,struct mptsas_hotplug_event*) ;

__attribute__((used)) static void
mptsas_send_sas_event(struct fw_event_work *fw_event)
{
 MPT_ADAPTER *ioc;
 struct mptsas_hotplug_event hot_plug_info;
 EVENT_DATA_SAS_DEVICE_STATUS_CHANGE *sas_event_data;
 u32 device_info;
 u64 sas_address;

 ioc = fw_event->ioc;
 sas_event_data = (EVENT_DATA_SAS_DEVICE_STATUS_CHANGE *)
     fw_event->event_data;
 device_info = le32_to_cpu(sas_event_data->DeviceInfo);

 if ((device_info &
  (MPI_SAS_DEVICE_INFO_SSP_TARGET |
  MPI_SAS_DEVICE_INFO_STP_TARGET |
  MPI_SAS_DEVICE_INFO_SATA_DEVICE)) == 0) {
  mptsas_free_fw_event(ioc, fw_event);
  return;
 }

 if (sas_event_data->ReasonCode ==
  129) {
  mptbase_sas_persist_operation(ioc,
  MPI_SAS_OP_CLEAR_NOT_PRESENT);
  mptsas_free_fw_event(ioc, fw_event);
  return;
 }

 switch (sas_event_data->ReasonCode) {
 case 130:
 case 132:
  memset(&hot_plug_info, 0, sizeof(struct mptsas_hotplug_event));
  hot_plug_info.handle = le16_to_cpu(sas_event_data->DevHandle);
  hot_plug_info.channel = sas_event_data->Bus;
  hot_plug_info.id = sas_event_data->TargetID;
  hot_plug_info.phy_id = sas_event_data->PhyNum;
  memcpy(&sas_address, &sas_event_data->SASAddress,
      sizeof(u64));
  hot_plug_info.sas_address = le64_to_cpu(sas_address);
  hot_plug_info.device_info = device_info;
  if (sas_event_data->ReasonCode &
      132)
   hot_plug_info.event_type = MPTSAS_ADD_DEVICE;
  else
   hot_plug_info.event_type = MPTSAS_DEL_DEVICE;
  mptsas_hotplug_work(ioc, fw_event, &hot_plug_info);
  break;

 case 129:
  mptbase_sas_persist_operation(ioc,
      MPI_SAS_OP_CLEAR_NOT_PRESENT);
  mptsas_free_fw_event(ioc, fw_event);
  break;

 case 128:

 case 131:

 default:
  mptsas_free_fw_event(ioc, fw_event);
  break;
 }
}
