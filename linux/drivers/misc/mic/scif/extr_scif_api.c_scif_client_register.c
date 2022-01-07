
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subsys_interface {int remove_dev; int add_dev; int * subsys; int name; } ;
struct scif_client {struct subsys_interface si; int name; } ;


 int scif_add_client_dev ;
 int scif_peer_bus ;
 int scif_remove_client_dev ;
 int subsys_interface_register (struct subsys_interface*) ;

int scif_client_register(struct scif_client *client)
{
 struct subsys_interface *si = &client->si;

 si->name = client->name;
 si->subsys = &scif_peer_bus;
 si->add_dev = scif_add_client_dev;
 si->remove_dev = scif_remove_client_dev;

 return subsys_interface_register(&client->si);
}
