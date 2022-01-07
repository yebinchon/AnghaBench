
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct napi_struct {struct net_device* dev; } ;
struct m_can_classdev {int dummy; } ;


 int m_can_enable_all_interrupts (struct m_can_classdev*) ;
 int m_can_rx_handler (struct net_device*,int) ;
 int napi_complete_done (struct napi_struct*,int) ;
 struct m_can_classdev* netdev_priv (struct net_device*) ;

__attribute__((used)) static int m_can_poll(struct napi_struct *napi, int quota)
{
 struct net_device *dev = napi->dev;
 struct m_can_classdev *cdev = netdev_priv(dev);
 int work_done;

 work_done = m_can_rx_handler(dev, quota);
 if (work_done < quota) {
  napi_complete_done(napi, work_done);
  m_can_enable_all_interrupts(cdev);
 }

 return work_done;
}
