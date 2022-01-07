
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_adapter {scalar_t__ devdump_len; int * devdump_data; int dev; } ;


 int GFP_KERNEL ;
 int MSG ;
 int dev_coredumpv (int ,int *,scalar_t__,int ) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;

void mwifiex_upload_device_dump(struct mwifiex_adapter *adapter)
{



 mwifiex_dbg(adapter, MSG,
      "== mwifiex dump information to /sys/class/devcoredump start\n");
 dev_coredumpv(adapter->dev, adapter->devdump_data, adapter->devdump_len,
        GFP_KERNEL);
 mwifiex_dbg(adapter, MSG,
      "== mwifiex dump information to /sys/class/devcoredump end\n");





 adapter->devdump_data = ((void*)0);
 adapter->devdump_len = 0;
}
