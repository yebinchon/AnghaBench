
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_app {int dummy; } ;
struct net_device {int dummy; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;

 int nfp_flower_setup_tc_block (struct net_device*,void*) ;

int nfp_flower_setup_tc(struct nfp_app *app, struct net_device *netdev,
   enum tc_setup_type type, void *type_data)
{
 switch (type) {
 case 128:
  return nfp_flower_setup_tc_block(netdev, type_data);
 default:
  return -EOPNOTSUPP;
 }
}
