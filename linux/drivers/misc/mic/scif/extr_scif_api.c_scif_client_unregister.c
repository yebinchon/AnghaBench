
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_client {int si; } ;


 int subsys_interface_unregister (int *) ;

void scif_client_unregister(struct scif_client *client)
{
 subsys_interface_unregister(&client->si);
}
