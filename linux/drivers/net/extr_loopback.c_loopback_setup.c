
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int eth_header_ops ;
 int gen_lo_setup (struct net_device*,int,int *,int *,int *,int ) ;
 int loopback_dev_free ;
 int loopback_ethtool_ops ;
 int loopback_ops ;

__attribute__((used)) static void loopback_setup(struct net_device *dev)
{
 gen_lo_setup(dev, (64 * 1024), &loopback_ethtool_ops, &eth_header_ops,
       &loopback_ops, loopback_dev_free);
}
