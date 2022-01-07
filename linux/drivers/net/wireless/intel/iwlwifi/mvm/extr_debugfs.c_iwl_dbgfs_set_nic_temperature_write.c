
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int temperature_test; int temperature; int mutex; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 size_t EINVAL ;
 size_t EIO ;
 int IWL_DEBUG_TEMP (struct iwl_mvm*,char*,char*,int) ;
 int IWL_MVM_DEBUG_SET_TEMPERATURE_DISABLE ;
 int IWL_MVM_DEBUG_SET_TEMPERATURE_MAX ;
 int IWL_MVM_DEBUG_SET_TEMPERATURE_MIN ;
 int iwl_mvm_firmware_running (struct iwl_mvm*) ;
 int iwl_mvm_tt_handler (struct iwl_mvm*) ;
 scalar_t__ kstrtoint (char*,int,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t iwl_dbgfs_set_nic_temperature_write(struct iwl_mvm *mvm,
         char *buf, size_t count,
         loff_t *ppos)
{
 int temperature;

 if (!iwl_mvm_firmware_running(mvm) && !mvm->temperature_test)
  return -EIO;

 if (kstrtoint(buf, 10, &temperature))
  return -EINVAL;

 if ((temperature > IWL_MVM_DEBUG_SET_TEMPERATURE_MAX &&
      temperature != IWL_MVM_DEBUG_SET_TEMPERATURE_DISABLE) ||
     temperature < IWL_MVM_DEBUG_SET_TEMPERATURE_MIN)
  return -EINVAL;

 mutex_lock(&mvm->mutex);
 if (temperature == IWL_MVM_DEBUG_SET_TEMPERATURE_DISABLE) {
  if (!mvm->temperature_test)
   goto out;

  mvm->temperature_test = 0;




  mvm->temperature = 0;
 } else {
  mvm->temperature_test = 1;
  mvm->temperature = temperature;
 }
 IWL_DEBUG_TEMP(mvm, "%sabling debug set temperature (temp = %d)\n",
         mvm->temperature_test ? "En" : "Dis" ,
         mvm->temperature);

 iwl_mvm_tt_handler(mvm);

out:
 mutex_unlock(&mvm->mutex);

 return count;
}
