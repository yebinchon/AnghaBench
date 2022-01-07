
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int rx_handler_data; } ;
struct macsec_rxh_data {int dummy; } ;


 struct macsec_rxh_data* rtnl_dereference (int ) ;

__attribute__((used)) static struct macsec_rxh_data *macsec_data_rtnl(const struct net_device *dev)
{
 return rtnl_dereference(dev->rx_handler_data);
}
