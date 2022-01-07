
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct be_cmd_work {int work; } ;
struct be_adapter {int dummy; } ;


 struct be_cmd_work* be_alloc_work (struct be_adapter*,int ) ;
 int be_work_set_rx_mode ;
 int be_wq ;
 struct be_adapter* netdev_priv (struct net_device*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void be_set_rx_mode(struct net_device *dev)
{
 struct be_adapter *adapter = netdev_priv(dev);
 struct be_cmd_work *work;

 work = be_alloc_work(adapter, be_work_set_rx_mode);
 if (work)
  queue_work(be_wq, &work->work);
}
