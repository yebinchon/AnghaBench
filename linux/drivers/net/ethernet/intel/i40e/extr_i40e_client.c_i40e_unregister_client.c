
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_client {int name; } ;


 int ENODEV ;
 int i40e_client_release (struct i40e_client*) ;
 int pr_info (char*,int ) ;
 struct i40e_client* registered_client ;

int i40e_unregister_client(struct i40e_client *client)
{
 int ret = 0;

 if (registered_client != client) {
  pr_info("i40e: Client %s has not been registered\n",
   client->name);
  ret = -ENODEV;
  goto out;
 }
 registered_client = ((void*)0);




 i40e_client_release(client);

 pr_info("i40e: Unregistered client %s\n", client->name);
out:
 return ret;
}
