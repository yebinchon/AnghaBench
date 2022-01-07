
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct expansion_card {int dummy; } ;


 struct net_device* ecard_get_drvdata (struct expansion_card*) ;
 int ecard_release_resources (struct expansion_card*) ;
 int ecard_set_drvdata (struct expansion_card*,int *) ;
 int free_netdev (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void ether1_remove(struct expansion_card *ec)
{
 struct net_device *dev = ecard_get_drvdata(ec);

 ecard_set_drvdata(ec, ((void*)0));

 unregister_netdev(dev);
 free_netdev(dev);
 ecard_release_resources(ec);
}
