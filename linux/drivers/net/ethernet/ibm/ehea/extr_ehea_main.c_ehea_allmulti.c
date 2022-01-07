
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct net_device {int dummy; } ;
struct ehea_port {int allmulti; } ;


 int H_DEREG_BCMC ;
 int H_REG_BCMC ;
 int ehea_drop_multicast_list (struct net_device*) ;
 scalar_t__ ehea_multicast_reg_helper (struct ehea_port*,int ,int ) ;
 int netdev_err (struct net_device*,char*) ;
 struct ehea_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ehea_allmulti(struct net_device *dev, int enable)
{
 struct ehea_port *port = netdev_priv(dev);
 u64 hret;

 if (!port->allmulti) {
  if (enable) {

   ehea_drop_multicast_list(dev);
   hret = ehea_multicast_reg_helper(port, 0, H_REG_BCMC);
   if (!hret)
    port->allmulti = 1;
   else
    netdev_err(dev,
        "failed enabling IFF_ALLMULTI\n");
  }
 } else {
  if (!enable) {

   hret = ehea_multicast_reg_helper(port, 0, H_DEREG_BCMC);
   if (!hret)
    port->allmulti = 0;
   else
    netdev_err(dev,
        "failed disabling IFF_ALLMULTI\n");
  }
 }
}
