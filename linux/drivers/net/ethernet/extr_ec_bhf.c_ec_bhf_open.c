
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tx_desc {int dummy; } ;
struct rx_desc {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int alloc_len; int alloc; } ;
struct TYPE_4__ {int function; } ;
struct ec_bhf_priv {TYPE_3__ rx_buf; TYPE_1__ hrtimer; scalar_t__ mii_io; int tx_dma_chan; TYPE_3__ tx_buf; int rx_dma_chan; } ;
struct device {int dummy; } ;


 int CLOCK_MONOTONIC ;
 int FIFO_SIZE ;
 int HRTIMER_MODE_REL ;
 scalar_t__ MII_MAC_FILT_FLAG ;
 struct device* PRIV_TO_DEV (struct ec_bhf_priv*) ;
 int dev_err (struct device*,char*) ;
 int dma_free_coherent (struct device*,int ,int ,int ) ;
 int ec_bhf_alloc_dma_mem (struct ec_bhf_priv*,TYPE_3__*,int ,int) ;
 int ec_bhf_reset (struct ec_bhf_priv*) ;
 int ec_bhf_setup_rx_descs (struct ec_bhf_priv*) ;
 int ec_bhf_setup_tx_descs (struct ec_bhf_priv*) ;
 int ec_bhf_timer_fun ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;
 int hrtimer_start (TYPE_1__*,int ,int ) ;
 int iowrite8 (int ,scalar_t__) ;
 struct ec_bhf_priv* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int polling_frequency ;

__attribute__((used)) static int ec_bhf_open(struct net_device *net_dev)
{
 struct ec_bhf_priv *priv = netdev_priv(net_dev);
 struct device *dev = PRIV_TO_DEV(priv);
 int err = 0;

 ec_bhf_reset(priv);

 err = ec_bhf_alloc_dma_mem(priv, &priv->rx_buf, priv->rx_dma_chan,
       FIFO_SIZE * sizeof(struct rx_desc));
 if (err) {
  dev_err(dev, "Failed to allocate rx buffer\n");
  goto out;
 }
 ec_bhf_setup_rx_descs(priv);

 err = ec_bhf_alloc_dma_mem(priv, &priv->tx_buf, priv->tx_dma_chan,
       FIFO_SIZE * sizeof(struct tx_desc));
 if (err) {
  dev_err(dev, "Failed to allocate tx buffer\n");
  goto error_rx_free;
 }
 iowrite8(0, priv->mii_io + MII_MAC_FILT_FLAG);
 ec_bhf_setup_tx_descs(priv);

 netif_start_queue(net_dev);

 hrtimer_init(&priv->hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 priv->hrtimer.function = ec_bhf_timer_fun;
 hrtimer_start(&priv->hrtimer, polling_frequency, HRTIMER_MODE_REL);

 return 0;

error_rx_free:
 dma_free_coherent(dev, priv->rx_buf.alloc_len, priv->rx_buf.alloc,
     priv->rx_buf.alloc_len);
out:
 return err;
}
