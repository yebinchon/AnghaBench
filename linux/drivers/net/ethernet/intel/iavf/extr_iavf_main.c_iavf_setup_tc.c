
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iavf_adapter {int dummy; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;


 int __iavf_setup_tc (struct net_device*,void*) ;
 int flow_block_cb_setup_simple (void*,int *,int ,struct iavf_adapter*,struct iavf_adapter*,int) ;
 int iavf_block_cb_list ;
 int iavf_setup_tc_block_cb ;
 struct iavf_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int iavf_setup_tc(struct net_device *netdev, enum tc_setup_type type,
    void *type_data)
{
 struct iavf_adapter *adapter = netdev_priv(netdev);

 switch (type) {
 case 128:
  return __iavf_setup_tc(netdev, type_data);
 case 129:
  return flow_block_cb_setup_simple(type_data,
        &iavf_block_cb_list,
        iavf_setup_tc_block_cb,
        adapter, adapter, 1);
 default:
  return -EOPNOTSUPP;
 }
}
