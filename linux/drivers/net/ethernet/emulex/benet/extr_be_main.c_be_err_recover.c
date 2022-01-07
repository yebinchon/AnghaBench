
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int recovery_supported; } ;
struct be_adapter {int priv_flags; int flags; TYPE_1__ error_recovery; } ;


 int BE_DISABLE_TPE_RECOVERY ;
 int BE_FLAGS_TRY_RECOVERY ;
 int EIO ;
 int be_cleanup (struct be_adapter*) ;
 int be_fw_wait_ready (struct be_adapter*) ;
 int be_resume (struct be_adapter*) ;
 int be_tpe_recover (struct be_adapter*) ;
 int lancer_chip (struct be_adapter*) ;

__attribute__((used)) static int be_err_recover(struct be_adapter *adapter)
{
 int status;

 if (!lancer_chip(adapter)) {
  if (!adapter->error_recovery.recovery_supported ||
      adapter->priv_flags & BE_DISABLE_TPE_RECOVERY)
   return -EIO;
  status = be_tpe_recover(adapter);
  if (status)
   goto err;
 }




 status = be_fw_wait_ready(adapter);
 if (status)
  goto err;

 adapter->flags |= BE_FLAGS_TRY_RECOVERY;

 be_cleanup(adapter);

 status = be_resume(adapter);
 if (status)
  goto err;

 adapter->flags &= ~BE_FLAGS_TRY_RECOVERY;

err:
 return status;
}
