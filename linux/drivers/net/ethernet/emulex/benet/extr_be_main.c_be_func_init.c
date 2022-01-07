
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int dummy; } ;


 int BE_CLEAR_ALL ;
 int be_clear_error (struct be_adapter*,int ) ;
 int be_cmd_fw_init (struct be_adapter*) ;
 int be_cmd_reset_function (struct be_adapter*) ;
 int be_fw_wait_ready (struct be_adapter*) ;
 int be_intr_set (struct be_adapter*,int) ;
 scalar_t__ be_reset_required (struct be_adapter*) ;
 int msleep (int) ;

__attribute__((used)) static int be_func_init(struct be_adapter *adapter)
{
 int status;

 status = be_fw_wait_ready(adapter);
 if (status)
  return status;


 be_clear_error(adapter, BE_CLEAR_ALL);

 if (be_reset_required(adapter)) {
  status = be_cmd_reset_function(adapter);
  if (status)
   return status;


  msleep(100);
 }


 status = be_cmd_fw_init(adapter);
 if (status)
  return status;


 be_intr_set(adapter, 1);

 return 0;
}
