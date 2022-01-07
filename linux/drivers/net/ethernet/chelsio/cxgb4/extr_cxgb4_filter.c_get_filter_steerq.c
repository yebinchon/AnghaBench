
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct port_info {int nqsets; size_t first_qset; } ;
struct net_device {int dummy; } ;
struct ch_filter_specification {int iq; int dirsteer; } ;
struct TYPE_5__ {TYPE_1__* ethrxq; } ;
struct adapter {TYPE_2__ sge; } ;
struct TYPE_6__ {int abs_id; } ;
struct TYPE_4__ {TYPE_3__ rspq; } ;


 int EINVAL ;
 struct adapter* netdev2adap (struct net_device*) ;
 struct port_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static int get_filter_steerq(struct net_device *dev,
        struct ch_filter_specification *fs)
{
 struct adapter *adapter = netdev2adap(dev);
 int iq;






 if (!fs->dirsteer) {
  if (fs->iq)
   return -EINVAL;
  iq = 0;
 } else {
  struct port_info *pi = netdev_priv(dev);




  if (fs->iq < pi->nqsets)
   iq = adapter->sge.ethrxq[pi->first_qset +
       fs->iq].rspq.abs_id;
  else
   iq = fs->iq;
 }

 return iq;
}
