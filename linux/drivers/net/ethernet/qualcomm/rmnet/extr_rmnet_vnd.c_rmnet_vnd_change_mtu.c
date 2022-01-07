
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int EINVAL ;
 int RMNET_MAX_PACKET_SIZE ;

__attribute__((used)) static int rmnet_vnd_change_mtu(struct net_device *rmnet_dev, int new_mtu)
{
 if (new_mtu < 0 || new_mtu > RMNET_MAX_PACKET_SIZE)
  return -EINVAL;

 rmnet_dev->mtu = new_mtu;
 return 0;
}
