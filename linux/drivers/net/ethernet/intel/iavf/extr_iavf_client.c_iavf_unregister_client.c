
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_client {int name; } ;


 int ENODEV ;
 int iavf_client_release (struct iavf_client*) ;
 int pr_info (char*,int ) ;
 struct iavf_client* vf_registered_client ;

int iavf_unregister_client(struct iavf_client *client)
{
 int ret = 0;





 iavf_client_release(client);

 if (vf_registered_client != client) {
  pr_info("iavf: Client %s has not been registered\n",
   client->name);
  ret = -ENODEV;
  goto out;
 }
 vf_registered_client = ((void*)0);
 pr_info("iavf: Unregistered client %s\n", client->name);
out:
 return ret;
}
