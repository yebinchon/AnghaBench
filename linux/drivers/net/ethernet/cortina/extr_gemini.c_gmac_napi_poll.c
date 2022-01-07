
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {int dev; } ;
struct gemini_ethernet_port {int freeq_refill; int rx_stats_syncp; int rx_napi_exits; struct gemini_ethernet* geth; } ;
struct gemini_ethernet {int freeq_order; } ;


 int geth_fill_freeq (struct gemini_ethernet*,int) ;
 int gmac_enable_rx_irq (int ,int) ;
 unsigned int gmac_rx (int ,int) ;
 int napi_complete_done (struct napi_struct*,unsigned int) ;
 int napi_gro_flush (struct napi_struct*,int) ;
 struct gemini_ethernet_port* netdev_priv (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static int gmac_napi_poll(struct napi_struct *napi, int budget)
{
 struct gemini_ethernet_port *port = netdev_priv(napi->dev);
 struct gemini_ethernet *geth = port->geth;
 unsigned int freeq_threshold;
 unsigned int received;

 freeq_threshold = 1 << (geth->freeq_order - 1);
 u64_stats_update_begin(&port->rx_stats_syncp);

 received = gmac_rx(napi->dev, budget);
 if (received < budget) {
  napi_gro_flush(napi, 0);
  napi_complete_done(napi, received);
  gmac_enable_rx_irq(napi->dev, 1);
  ++port->rx_napi_exits;
 }

 port->freeq_refill += (budget - received);
 if (port->freeq_refill > freeq_threshold) {
  port->freeq_refill -= freeq_threshold;
  geth_fill_freeq(geth, 1);
 }

 u64_stats_update_end(&port->rx_stats_syncp);
 return received;
}
