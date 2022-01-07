
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_2__ {int interface_type; void* cable_type; } ;
struct be_adapter {TYPE_1__ phy; } ;


 int PAGE_DATA_LEN ;


 size_t QSFP_PLUS_CABLE_TYPE_OFFSET ;
 size_t SFP_PLUS_CABLE_TYPE_OFFSET ;
 int TR_PAGE_A0 ;
 int be_cmd_read_port_transceiver_data (struct be_adapter*,int ,void**) ;

int be_cmd_query_cable_type(struct be_adapter *adapter)
{
 u8 page_data[PAGE_DATA_LEN];
 int status;

 status = be_cmd_read_port_transceiver_data(adapter, TR_PAGE_A0,
         page_data);
 if (!status) {
  switch (adapter->phy.interface_type) {
  case 129:
   adapter->phy.cable_type =
    page_data[QSFP_PLUS_CABLE_TYPE_OFFSET];
   break;
  case 128:
   adapter->phy.cable_type =
    page_data[SFP_PLUS_CABLE_TYPE_OFFSET];
   break;
  default:
   adapter->phy.cable_type = 0;
   break;
  }
 }
 return status;
}
