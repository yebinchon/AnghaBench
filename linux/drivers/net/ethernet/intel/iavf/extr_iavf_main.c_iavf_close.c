
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct iavf_adapter {scalar_t__ state; int down_waitqueue; int crit_section; int flags; TYPE_1__ vsi; } ;


 scalar_t__ CLIENT_ENABLED (struct iavf_adapter*) ;
 int IAVF_FLAG_CLIENT_NEEDS_CLOSE ;
 scalar_t__ __IAVF_DOWN ;
 scalar_t__ __IAVF_DOWN_PENDING ;
 int __IAVF_IN_CRITICAL_TASK ;
 int __IAVF_VSI_DOWN ;
 int clear_bit (int ,int *) ;
 int iavf_down (struct iavf_adapter*) ;
 int iavf_free_traffic_irqs (struct iavf_adapter*) ;
 int msecs_to_jiffies (int) ;
 struct iavf_adapter* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int set_bit (int ,int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usleep_range (int,int) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int iavf_close(struct net_device *netdev)
{
 struct iavf_adapter *adapter = netdev_priv(netdev);
 int status;

 if (adapter->state <= __IAVF_DOWN_PENDING)
  return 0;

 while (test_and_set_bit(__IAVF_IN_CRITICAL_TASK,
    &adapter->crit_section))
  usleep_range(500, 1000);

 set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
 if (CLIENT_ENABLED(adapter))
  adapter->flags |= IAVF_FLAG_CLIENT_NEEDS_CLOSE;

 iavf_down(adapter);
 adapter->state = __IAVF_DOWN_PENDING;
 iavf_free_traffic_irqs(adapter);

 clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
 status = wait_event_timeout(adapter->down_waitqueue,
        adapter->state == __IAVF_DOWN,
        msecs_to_jiffies(500));
 if (!status)
  netdev_warn(netdev, "Device resources not yet released\n");
 return 0;
}
