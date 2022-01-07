
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xge_pdata {int napi; int tx_ring; } ;
struct net_device {int dummy; } ;


 int DMATXCTRL ;
 int DMATXSTATUS ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 struct xge_pdata* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int xge_free_pending_skb (struct net_device*) ;
 int xge_intr_disable (struct xge_pdata*) ;
 int xge_intr_enable (struct xge_pdata*) ;
 int xge_mac_enable (struct xge_pdata*) ;
 int xge_mac_init (struct xge_pdata*) ;
 int xge_setup_desc (int ) ;
 int xge_txc_poll (struct net_device*) ;
 int xge_update_tx_desc_addr (struct xge_pdata*) ;
 int xge_wr_csr (struct xge_pdata*,int ,unsigned int) ;

__attribute__((used)) static void xge_timeout(struct net_device *ndev)
{
 struct xge_pdata *pdata = netdev_priv(ndev);

 rtnl_lock();

 if (!netif_running(ndev))
  goto out;

 netif_stop_queue(ndev);
 xge_intr_disable(pdata);
 napi_disable(&pdata->napi);

 xge_wr_csr(pdata, DMATXCTRL, 0);
 xge_txc_poll(ndev);
 xge_free_pending_skb(ndev);
 xge_wr_csr(pdata, DMATXSTATUS, ~0U);

 xge_setup_desc(pdata->tx_ring);
 xge_update_tx_desc_addr(pdata);
 xge_mac_init(pdata);

 napi_enable(&pdata->napi);
 xge_intr_enable(pdata);
 xge_mac_enable(pdata);
 netif_start_queue(ndev);

out:
 rtnl_unlock();
}
