
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct adapter {int mbox; } ;


 int CTXT_EGRESS ;
 struct adapter* netdev2adap (struct net_device*) ;
 int t4_sge_ctxt_flush (struct adapter*,int ,int ) ;

int cxgb4_flush_eq_cache(struct net_device *dev)
{
 struct adapter *adap = netdev2adap(dev);

 return t4_sge_ctxt_flush(adap, adap->mbox, CTXT_EGRESS);
}
