
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sge {int dbqtimer_tick; int dbqtimer_val; } ;
struct port_info {struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {int flags; int pf; int mbox; struct sge sge; } ;


 int ARRAY_SIZE (int ) ;
 int CXGB4_SGE_DBQ_TIMER ;
 int FW_PARAMS_MNEM_DEV ;
 int FW_PARAMS_MNEM_V (int ) ;
 int FW_PARAMS_PARAM_DEV_DBQ_TIMERTICK ;
 int FW_PARAMS_PARAM_X_V (int ) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int t4_read_sge_dbqtimers (struct adapter*,int ,int ) ;
 int t4_set_params (struct adapter*,int ,int ,int ,int,int*,int*) ;

__attribute__((used)) static int set_dbqtimer_tick(struct net_device *dev, int usecs)
{
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adap = pi->adapter;
 struct sge *s = &adap->sge;
 u32 param, val;
 int ret;

 if (!(adap->flags & CXGB4_SGE_DBQ_TIMER))
  return 0;


 if (s->dbqtimer_tick == usecs)
  return 0;


 param = (FW_PARAMS_MNEM_V(FW_PARAMS_MNEM_DEV) |
   FW_PARAMS_PARAM_X_V(FW_PARAMS_PARAM_DEV_DBQ_TIMERTICK));
 val = usecs;
 ret = t4_set_params(adap, adap->mbox, adap->pf, 0, 1, &param, &val);
 if (ret)
  return ret;
 s->dbqtimer_tick = usecs;


 ret = t4_read_sge_dbqtimers(adap, ARRAY_SIZE(s->dbqtimer_val),
        s->dbqtimer_val);
 return ret;
}
