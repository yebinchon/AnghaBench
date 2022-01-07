
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwifiex_private {int dummy; } ;
struct TYPE_2__ {int (* down_dev ) (struct mwifiex_adapter*) ;} ;
struct mwifiex_adapter {TYPE_1__ if_ops; int fw_done; } ;


 int MWIFIEX_BSS_ROLE_ANY ;
 int mwifiex_deauthenticate (struct mwifiex_private*,int *) ;
 struct mwifiex_private* mwifiex_get_priv (struct mwifiex_adapter*,int ) ;
 int mwifiex_uninit_sw (struct mwifiex_adapter*) ;
 int reinit_completion (int ) ;
 int stub1 (struct mwifiex_adapter*) ;
 int wait_for_completion (int ) ;

int mwifiex_shutdown_sw(struct mwifiex_adapter *adapter)
{
 struct mwifiex_private *priv;

 if (!adapter)
  return 0;

 wait_for_completion(adapter->fw_done);

 reinit_completion(adapter->fw_done);

 priv = mwifiex_get_priv(adapter, MWIFIEX_BSS_ROLE_ANY);
 mwifiex_deauthenticate(priv, ((void*)0));

 mwifiex_uninit_sw(adapter);

 if (adapter->if_ops.down_dev)
  adapter->if_ops.down_dev(adapter);

 return 0;
}
