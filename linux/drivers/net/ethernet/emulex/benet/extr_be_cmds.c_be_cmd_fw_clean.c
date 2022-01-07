
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct be_adapter {int mbox_lock; } ;


 int be_mbox_notify_wait (struct be_adapter*) ;
 scalar_t__ lancer_chip (struct be_adapter*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ wrb_from_mbox (struct be_adapter*) ;

int be_cmd_fw_clean(struct be_adapter *adapter)
{
 u8 *wrb;
 int status;

 if (lancer_chip(adapter))
  return 0;

 if (mutex_lock_interruptible(&adapter->mbox_lock))
  return -1;

 wrb = (u8 *)wrb_from_mbox(adapter);
 *wrb++ = 0xFF;
 *wrb++ = 0xAA;
 *wrb++ = 0xBB;
 *wrb++ = 0xFF;
 *wrb++ = 0xFF;
 *wrb++ = 0xCC;
 *wrb++ = 0xDD;
 *wrb = 0xFF;

 status = be_mbox_notify_wait(adapter);

 mutex_unlock(&adapter->mbox_lock);
 return status;
}
