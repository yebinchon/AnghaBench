
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nps_enet_priv {int dummy; } ;
struct net_device {int dummy; } ;
struct napi_struct {struct net_device* dev; } ;


 int NPS_ENET_ENABLE ;
 int NPS_ENET_REG_BUF_INT_ENABLE ;
 int RX_RDY_SHIFT ;
 int TX_DONE_SHIFT ;
 scalar_t__ napi_complete_done (struct napi_struct*,int) ;
 int napi_reschedule (struct napi_struct*) ;
 struct nps_enet_priv* netdev_priv (struct net_device*) ;
 scalar_t__ nps_enet_is_tx_pending (struct nps_enet_priv*) ;
 int nps_enet_reg_set (struct nps_enet_priv*,int ,int) ;
 int nps_enet_rx_handler (struct net_device*) ;
 int nps_enet_tx_handler (struct net_device*) ;

__attribute__((used)) static int nps_enet_poll(struct napi_struct *napi, int budget)
{
 struct net_device *ndev = napi->dev;
 struct nps_enet_priv *priv = netdev_priv(ndev);
 u32 work_done;

 nps_enet_tx_handler(ndev);
 work_done = nps_enet_rx_handler(ndev);
 if ((work_done < budget) && napi_complete_done(napi, work_done)) {
  u32 buf_int_enable_value = 0;


  buf_int_enable_value |= NPS_ENET_ENABLE << RX_RDY_SHIFT;
  buf_int_enable_value |= NPS_ENET_ENABLE << TX_DONE_SHIFT;

  nps_enet_reg_set(priv, NPS_ENET_REG_BUF_INT_ENABLE,
     buf_int_enable_value);
  if (nps_enet_is_tx_pending(priv)) {
   nps_enet_reg_set(priv, NPS_ENET_REG_BUF_INT_ENABLE, 0);
   napi_reschedule(napi);
  }
 }

 return work_done;
}
