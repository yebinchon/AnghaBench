
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_adapter {int devdump_data; } ;


 int ERROR ;
 int MWIFIEX_FW_DUMP_SIZE ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 int mwifiex_drv_info_dump (struct mwifiex_adapter*) ;
 int mwifiex_pcie_fw_dump (struct mwifiex_adapter*) ;
 int mwifiex_prepare_fw_dump_info (struct mwifiex_adapter*) ;
 int mwifiex_upload_device_dump (struct mwifiex_adapter*) ;
 int vzalloc (int ) ;

__attribute__((used)) static void mwifiex_pcie_device_dump_work(struct mwifiex_adapter *adapter)
{
 adapter->devdump_data = vzalloc(MWIFIEX_FW_DUMP_SIZE);
 if (!adapter->devdump_data) {
  mwifiex_dbg(adapter, ERROR,
       "vzalloc devdump data failure!\n");
  return;
 }

 mwifiex_drv_info_dump(adapter);
 mwifiex_pcie_fw_dump(adapter);
 mwifiex_prepare_fw_dump_info(adapter);
 mwifiex_upload_device_dump(adapter);
}
