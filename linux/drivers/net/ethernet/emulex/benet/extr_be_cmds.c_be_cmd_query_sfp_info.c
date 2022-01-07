
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int vendor_pn; int vendor_name; } ;
struct be_adapter {TYPE_1__ phy; } ;


 int PAGE_DATA_LEN ;
 scalar_t__ SFP_VENDOR_NAME_LEN ;
 int SFP_VENDOR_NAME_OFFSET ;
 int SFP_VENDOR_PN_OFFSET ;
 int TR_PAGE_A0 ;
 int be_cmd_read_port_transceiver_data (struct be_adapter*,int ,int *) ;
 int strlcpy (int ,int *,scalar_t__) ;

int be_cmd_query_sfp_info(struct be_adapter *adapter)
{
 u8 page_data[PAGE_DATA_LEN];
 int status;

 status = be_cmd_read_port_transceiver_data(adapter, TR_PAGE_A0,
         page_data);
 if (!status) {
  strlcpy(adapter->phy.vendor_name, page_data +
   SFP_VENDOR_NAME_OFFSET, SFP_VENDOR_NAME_LEN - 1);
  strlcpy(adapter->phy.vendor_pn,
   page_data + SFP_VENDOR_PN_OFFSET,
   SFP_VENDOR_NAME_LEN - 1);
 }

 return status;
}
