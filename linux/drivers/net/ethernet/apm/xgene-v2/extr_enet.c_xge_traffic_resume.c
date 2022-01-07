
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xge_pdata {int dummy; } ;
struct net_device {int dummy; } ;


 int CFG_FORCE_LINK_STATUS_EN ;
 int CFG_LINK_AGGR_RESUME ;
 int FORCE_LINK_STATUS ;
 int RX_DV_GATE_REG ;
 struct xge_pdata* netdev_priv (struct net_device*) ;
 int xge_wr_csr (struct xge_pdata*,int ,int) ;

__attribute__((used)) static void xge_traffic_resume(struct net_device *ndev)
{
 struct xge_pdata *pdata = netdev_priv(ndev);

 xge_wr_csr(pdata, CFG_FORCE_LINK_STATUS_EN, 1);
 xge_wr_csr(pdata, FORCE_LINK_STATUS, 1);

 xge_wr_csr(pdata, CFG_LINK_AGGR_RESUME, 1);
 xge_wr_csr(pdata, RX_DV_GATE_REG, 1);
}
