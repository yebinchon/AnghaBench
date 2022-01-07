
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_adapter {int state; } ;
struct net_device {int dummy; } ;


 int VMXNET3_STATE_BIT_RESETTING ;
 int clear_bit (int ,int *) ;
 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usleep_range (int,int) ;
 int vmxnet3_quiesce_dev (struct vmxnet3_adapter*) ;
 int vmxnet3_rq_destroy_all (struct vmxnet3_adapter*) ;
 int vmxnet3_tq_destroy_all (struct vmxnet3_adapter*) ;

__attribute__((used)) static int
vmxnet3_close(struct net_device *netdev)
{
 struct vmxnet3_adapter *adapter = netdev_priv(netdev);





 while (test_and_set_bit(VMXNET3_STATE_BIT_RESETTING, &adapter->state))
  usleep_range(1000, 2000);

 vmxnet3_quiesce_dev(adapter);

 vmxnet3_rq_destroy_all(adapter);
 vmxnet3_tq_destroy_all(adapter);

 clear_bit(VMXNET3_STATE_BIT_RESETTING, &adapter->state);


 return 0;
}
