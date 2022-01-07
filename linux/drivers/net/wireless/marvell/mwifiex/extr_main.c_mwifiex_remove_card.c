
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* unregister_dev ) (struct mwifiex_adapter*) ;} ;
struct mwifiex_adapter {scalar_t__ irq_wakeup; TYPE_1__ if_ops; int dev; } ;


 int INFO ;
 int device_init_wakeup (int ,int) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 int mwifiex_free_adapter (struct mwifiex_adapter*) ;
 int mwifiex_uninit_sw (struct mwifiex_adapter*) ;
 int stub1 (struct mwifiex_adapter*) ;

int mwifiex_remove_card(struct mwifiex_adapter *adapter)
{
 if (!adapter)
  return 0;

 mwifiex_uninit_sw(adapter);

 if (adapter->irq_wakeup >= 0)
  device_init_wakeup(adapter->dev, 0);


 mwifiex_dbg(adapter, INFO,
      "info: unregister device\n");
 if (adapter->if_ops.unregister_dev)
  adapter->if_ops.unregister_dev(adapter);

 mwifiex_dbg(adapter, INFO,
      "info: free adapter\n");
 mwifiex_free_adapter(adapter);

 return 0;
}
