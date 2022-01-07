
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;

 int mlx5e_rep_indr_setup_tc_block (struct net_device*,void*,void*) ;

__attribute__((used)) static
int mlx5e_rep_indr_setup_tc_cb(struct net_device *netdev, void *cb_priv,
          enum tc_setup_type type, void *type_data)
{
 switch (type) {
 case 128:
  return mlx5e_rep_indr_setup_tc_block(netdev, cb_priv,
            type_data);
 default:
  return -EOPNOTSUPP;
 }
}
