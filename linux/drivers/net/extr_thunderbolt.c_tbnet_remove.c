
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tbnet {int dev; int handler; } ;
struct tb_service {int dummy; } ;


 int free_netdev (int ) ;
 struct tbnet* tb_service_get_drvdata (struct tb_service*) ;
 int tb_unregister_protocol_handler (int *) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static void tbnet_remove(struct tb_service *svc)
{
 struct tbnet *net = tb_service_get_drvdata(svc);

 unregister_netdev(net->dev);
 tb_unregister_protocol_handler(&net->handler);
 free_netdev(net->dev);
}
