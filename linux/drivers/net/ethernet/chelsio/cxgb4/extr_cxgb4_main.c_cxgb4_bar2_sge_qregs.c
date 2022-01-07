
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device {int dummy; } ;
typedef enum cxgb4_bar2_qtype { ____Placeholder_cxgb4_bar2_qtype } cxgb4_bar2_qtype ;


 int CXGB4_BAR2_QTYPE_EGRESS ;
 int T4_BAR2_QTYPE_EGRESS ;
 int T4_BAR2_QTYPE_INGRESS ;
 int netdev2adap (struct net_device*) ;
 int t4_bar2_sge_qregs (int ,unsigned int,int ,int,int *,unsigned int*) ;

int cxgb4_bar2_sge_qregs(struct net_device *dev,
    unsigned int qid,
    enum cxgb4_bar2_qtype qtype,
    int user,
    u64 *pbar2_qoffset,
    unsigned int *pbar2_qid)
{
 return t4_bar2_sge_qregs(netdev2adap(dev),
     qid,
     (qtype == CXGB4_BAR2_QTYPE_EGRESS
      ? T4_BAR2_QTYPE_EGRESS
      : T4_BAR2_QTYPE_INGRESS),
     user,
     pbar2_qoffset,
     pbar2_qid);
}
