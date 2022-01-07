
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iavf_adapter {int link_speed; int link_up; struct net_device* netdev; } ;
 int netdev_info (struct net_device*,char*,...) ;

__attribute__((used)) static void iavf_print_link_message(struct iavf_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 char *speed = "Unknown ";

 if (!adapter->link_up) {
  netdev_info(netdev, "NIC Link is Down\n");
  return;
 }

 switch (adapter->link_speed) {
 case 128:
  speed = "40 G";
  break;
 case 129:
  speed = "25 G";
  break;
 case 130:
  speed = "20 G";
  break;
 case 132:
  speed = "10 G";
  break;
 case 131:
  speed = "1000 M";
  break;
 case 133:
  speed = "100 M";
  break;
 default:
  break;
 }

 netdev_info(netdev, "NIC Link is Up %sbps Full Duplex\n", speed);
}
