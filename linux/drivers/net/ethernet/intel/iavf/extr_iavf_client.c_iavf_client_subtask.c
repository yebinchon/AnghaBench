
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iavf_client_instance {int state; int lan_info; } ;
struct iavf_client {TYPE_2__* ops; int name; } ;
struct iavf_adapter {scalar_t__ state; TYPE_1__* pdev; } ;
struct TYPE_4__ {int (* open ) (int *,struct iavf_client*) ;} ;
struct TYPE_3__ {int dev; } ;


 int __IAVF_CLIENT_INSTANCE_OPENED ;
 scalar_t__ __IAVF_DOWN ;
 int dev_info (int *,char*,int ) ;
 struct iavf_client_instance* iavf_client_add_instance (struct iavf_adapter*) ;
 int iavf_client_del_instance (struct iavf_adapter*) ;
 int set_bit (int ,int *) ;
 int stub1 (int *,struct iavf_client*) ;
 int test_bit (int ,int *) ;
 struct iavf_client* vf_registered_client ;

void iavf_client_subtask(struct iavf_adapter *adapter)
{
 struct iavf_client *client = vf_registered_client;
 struct iavf_client_instance *cinst;
 int ret = 0;

 if (adapter->state < __IAVF_DOWN)
  return;


 if (!client)
  return;


 cinst = iavf_client_add_instance(adapter);
 if (!cinst)
  return;

 dev_info(&adapter->pdev->dev, "Added instance of Client %s\n",
   client->name);

 if (!test_bit(__IAVF_CLIENT_INSTANCE_OPENED, &cinst->state)) {


  if (client->ops && client->ops->open)
   ret = client->ops->open(&cinst->lan_info, client);
  if (!ret)
   set_bit(__IAVF_CLIENT_INSTANCE_OPENED,
    &cinst->state);
  else

   iavf_client_del_instance(adapter);
 }
}
