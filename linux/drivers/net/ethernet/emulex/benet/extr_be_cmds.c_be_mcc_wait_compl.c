
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int used; } ;
struct be_mcc_obj {TYPE_2__ q; } ;
struct be_adapter {TYPE_1__* pdev; struct be_mcc_obj mcc_obj; } ;
struct TYPE_3__ {int dev; } ;


 int BE_ERROR_ANY ;
 int BE_ERROR_FW ;
 int EIO ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ be_check_error (struct be_adapter*,int ) ;
 int be_process_mcc (struct be_adapter*) ;
 int be_set_error (struct be_adapter*,int ) ;
 int dev_err (int *,char*) ;
 int mcc_timeout ;
 int usleep_range (int,int) ;

__attribute__((used)) static int be_mcc_wait_compl(struct be_adapter *adapter)
{

 int i, status = 0;
 struct be_mcc_obj *mcc_obj = &adapter->mcc_obj;

 for (i = 0; i < 12000; i++) {
  if (be_check_error(adapter, BE_ERROR_ANY))
   return -EIO;

  status = be_process_mcc(adapter);

  if (atomic_read(&mcc_obj->q.used) == 0)
   break;
  usleep_range(500, 1000);
 }
 if (i == 12000) {
  dev_err(&adapter->pdev->dev, "FW not responding\n");
  be_set_error(adapter, BE_ERROR_FW);
  return -EIO;
 }
 return status;
}
