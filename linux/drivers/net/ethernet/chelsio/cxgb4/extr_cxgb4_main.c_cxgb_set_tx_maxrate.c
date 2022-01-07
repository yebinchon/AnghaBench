
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sched_class {void* idx; } ;
struct port_info {int nqsets; int tx_chan; int port_id; struct adapter* adapter; } ;
struct net_device {int mtu; } ;
struct TYPE_3__ {int maxrate; int pktsize; scalar_t__ weight; scalar_t__ minrate; void* class; int channel; int ratemode; int rateunit; int mode; int level; } ;
struct TYPE_4__ {TYPE_1__ params; } ;
struct ch_sched_queue {int queue; void* class; TYPE_2__ u; int type; } ;
struct ch_sched_params {int queue; void* class; TYPE_2__ u; int type; } ;
struct adapter {int flags; int pdev_dev; } ;
typedef int qe ;
typedef int p ;


 int CXGB4_FULL_INIT_DONE ;
 int EINVAL ;
 int ENOMEM ;
 int ENOTSUPP ;
 int ERANGE ;
 int SCHED_CLASS_LEVEL_CL_RL ;
 int SCHED_CLASS_MODE_CLASS ;
 int SCHED_CLASS_RATEMODE_ABS ;
 int SCHED_CLASS_RATEUNIT_BITS ;
 int SCHED_CLASS_TYPE_PACKET ;
 void* SCHED_CLS_NONE ;
 int SCHED_MAX_RATE_KBPS ;
 int SCHED_QUEUE ;
 int can_sched (struct net_device*) ;
 struct sched_class* cxgb4_sched_class_alloc (struct net_device*,struct ch_sched_queue*) ;
 int cxgb4_sched_class_bind (struct net_device*,void*,int ) ;
 int cxgb4_sched_class_unbind (struct net_device*,void*,int ) ;
 int dev_err (int ,char*,int,...) ;
 int memset (struct ch_sched_queue*,int ,int) ;
 struct port_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static int cxgb_set_tx_maxrate(struct net_device *dev, int index, u32 rate)
{
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adap = pi->adapter;
 struct sched_class *e;
 struct ch_sched_params p;
 struct ch_sched_queue qe;
 u32 req_rate;
 int err = 0;

 if (!can_sched(dev))
  return -ENOTSUPP;

 if (index < 0 || index > pi->nqsets - 1)
  return -EINVAL;

 if (!(adap->flags & CXGB4_FULL_INIT_DONE)) {
  dev_err(adap->pdev_dev,
   "Failed to rate limit on queue %d. Link Down?\n",
   index);
  return -EINVAL;
 }


 req_rate = rate * 1000;


 if (req_rate > SCHED_MAX_RATE_KBPS) {
  dev_err(adap->pdev_dev,
   "Invalid rate %u Mbps, Max rate is %u Mbps\n",
   rate, SCHED_MAX_RATE_KBPS / 1000);
  return -ERANGE;
 }


 memset(&qe, 0, sizeof(qe));
 qe.queue = index;
 qe.class = SCHED_CLS_NONE;

 err = cxgb4_sched_class_unbind(dev, (void *)(&qe), SCHED_QUEUE);
 if (err) {
  dev_err(adap->pdev_dev,
   "Unbinding Queue %d on port %d fail. Err: %d\n",
   index, pi->port_id, err);
  return err;
 }


 if (!req_rate)
  return 0;


 memset(&p, 0, sizeof(p));
 p.type = SCHED_CLASS_TYPE_PACKET;
 p.u.params.level = SCHED_CLASS_LEVEL_CL_RL;
 p.u.params.mode = SCHED_CLASS_MODE_CLASS;
 p.u.params.rateunit = SCHED_CLASS_RATEUNIT_BITS;
 p.u.params.ratemode = SCHED_CLASS_RATEMODE_ABS;
 p.u.params.channel = pi->tx_chan;
 p.u.params.class = SCHED_CLS_NONE;
 p.u.params.minrate = 0;
 p.u.params.maxrate = req_rate;
 p.u.params.weight = 0;
 p.u.params.pktsize = dev->mtu;

 e = cxgb4_sched_class_alloc(dev, &p);
 if (!e)
  return -ENOMEM;


 memset(&qe, 0, sizeof(qe));
 qe.queue = index;
 qe.class = e->idx;

 err = cxgb4_sched_class_bind(dev, (void *)(&qe), SCHED_QUEUE);
 if (err)
  dev_err(adap->pdev_dev,
   "Queue rate limiting failed. Err: %d\n", err);
 return err;
}
