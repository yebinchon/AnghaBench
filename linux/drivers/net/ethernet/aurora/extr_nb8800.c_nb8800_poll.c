
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int rx_bytes; int multicast; int rx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_4__ {int config; } ;
struct nb8800_rx_desc {int report; TYPE_2__ desc; } ;
struct nb8800_priv {unsigned int rx_eoc; struct nb8800_rx_desc* rx_descs; int rx_itr_irq; } ;
struct napi_struct {struct net_device* dev; } ;


 int DESC_EOC ;
 scalar_t__ IS_RX_ERROR (int) ;
 int NB8800_RX_ITR ;
 unsigned int RX_BYTES_TRANSFERRED (int) ;
 unsigned int RX_DESC_COUNT ;
 int RX_MULTICAST_PKT ;
 int napi_complete_done (struct napi_struct*,int) ;
 int nb8800_receive (struct net_device*,unsigned int,unsigned int) ;
 int nb8800_rx_error (struct net_device*,int) ;
 int nb8800_start_rx (struct net_device*) ;
 int nb8800_tx_done (struct net_device*) ;
 int nb8800_writel (struct nb8800_priv*,int ,int ) ;
 struct nb8800_priv* netdev_priv (struct net_device*) ;
 int wmb () ;

__attribute__((used)) static int nb8800_poll(struct napi_struct *napi, int budget)
{
 struct net_device *dev = napi->dev;
 struct nb8800_priv *priv = netdev_priv(dev);
 struct nb8800_rx_desc *rxd;
 unsigned int last = priv->rx_eoc;
 unsigned int next;
 int work = 0;

 nb8800_tx_done(dev);

again:
 do {
  unsigned int len;

  next = (last + 1) % RX_DESC_COUNT;

  rxd = &priv->rx_descs[next];

  if (!rxd->report)
   break;

  len = RX_BYTES_TRANSFERRED(rxd->report);

  if (IS_RX_ERROR(rxd->report))
   nb8800_rx_error(dev, rxd->report);
  else
   nb8800_receive(dev, next, len);

  dev->stats.rx_packets++;
  dev->stats.rx_bytes += len;

  if (rxd->report & RX_MULTICAST_PKT)
   dev->stats.multicast++;

  rxd->report = 0;
  last = next;
  work++;
 } while (work < budget);

 if (work) {
  priv->rx_descs[last].desc.config |= DESC_EOC;
  wmb();
  priv->rx_descs[priv->rx_eoc].desc.config &= ~DESC_EOC;
  priv->rx_eoc = last;
  nb8800_start_rx(dev);
 }

 if (work < budget) {
  nb8800_writel(priv, NB8800_RX_ITR, priv->rx_itr_irq);





  if (priv->rx_descs[next].report)
   goto again;

  napi_complete_done(napi, work);
 }

 return work;
}
