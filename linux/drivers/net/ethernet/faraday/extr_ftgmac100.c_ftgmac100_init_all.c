
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftgmac100 {scalar_t__ base; int netdev; int napi; } ;


 int FTGMAC100_INT_ALL ;
 scalar_t__ FTGMAC100_OFFSET_IER ;
 int ftgmac100_alloc_rx_buffers (struct ftgmac100*) ;
 int ftgmac100_config_pause (struct ftgmac100*) ;
 int ftgmac100_init_hw (struct ftgmac100*) ;
 int ftgmac100_init_rings (struct ftgmac100*) ;
 int ftgmac100_start_hw (struct ftgmac100*) ;
 int iowrite32 (int ,scalar_t__) ;
 int napi_enable (int *) ;
 int netif_start_queue (int ) ;

__attribute__((used)) static int ftgmac100_init_all(struct ftgmac100 *priv, bool ignore_alloc_err)
{
 int err = 0;


 ftgmac100_init_rings(priv);


 err = ftgmac100_alloc_rx_buffers(priv);
 if (err && !ignore_alloc_err)
  return err;


 ftgmac100_init_hw(priv);
 ftgmac100_config_pause(priv);
 ftgmac100_start_hw(priv);


 napi_enable(&priv->napi);
 netif_start_queue(priv->netdev);


 iowrite32(FTGMAC100_INT_ALL, priv->base + FTGMAC100_OFFSET_IER);

 return err;
}
