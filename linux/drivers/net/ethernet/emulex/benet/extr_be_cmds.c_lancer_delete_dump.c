
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int dummy; } ;


 int LANCER_FW_DUMP_FILE ;
 int be_cmd_status (int) ;
 int lancer_cmd_delete_object (struct be_adapter*,int ) ;

int lancer_delete_dump(struct be_adapter *adapter)
{
 int status;

 status = lancer_cmd_delete_object(adapter, LANCER_FW_DUMP_FILE);
 return be_cmd_status(status);
}
