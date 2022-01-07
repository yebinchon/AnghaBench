
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct port {int * npe; int napi; int plat; TYPE_3__* dev; int id; int clock_reg; scalar_t__ clock_rate; int clock_type; struct net_device* netdev; } ;
struct TYPE_5__ {int platform_data; } ;
struct platform_device {TYPE_3__ dev; int id; } ;
struct net_device {int tx_queue_len; int * netdev_ops; } ;
struct TYPE_4__ {int xmit; int attach; } ;
typedef TYPE_1__ hdlc_device ;


 int CLK42X_SPEED_2048KHZ ;
 int CLOCK_EXT ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NAPI_WEIGHT ;
 int SET_NETDEV_DEV (struct net_device*,TYPE_3__*) ;
 struct net_device* alloc_hdlcdev (struct port*) ;
 TYPE_1__* dev_to_hdlc (struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int hss_hdlc_attach ;
 int hss_hdlc_ops ;
 int hss_hdlc_poll ;
 int hss_hdlc_xmit ;
 int kfree (struct port*) ;
 struct port* kzalloc (int,int ) ;
 int netdev_info (struct net_device*,char*) ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;
 int npe_release (int *) ;
 int * npe_request (int ) ;
 int platform_set_drvdata (struct platform_device*,struct port*) ;
 int register_hdlc_device (struct net_device*) ;

__attribute__((used)) static int hss_init_one(struct platform_device *pdev)
{
 struct port *port;
 struct net_device *dev;
 hdlc_device *hdlc;
 int err;

 if ((port = kzalloc(sizeof(*port), GFP_KERNEL)) == ((void*)0))
  return -ENOMEM;

 if ((port->npe = npe_request(0)) == ((void*)0)) {
  err = -ENODEV;
  goto err_free;
 }

 if ((port->netdev = dev = alloc_hdlcdev(port)) == ((void*)0)) {
  err = -ENOMEM;
  goto err_plat;
 }

 SET_NETDEV_DEV(dev, &pdev->dev);
 hdlc = dev_to_hdlc(dev);
 hdlc->attach = hss_hdlc_attach;
 hdlc->xmit = hss_hdlc_xmit;
 dev->netdev_ops = &hss_hdlc_ops;
 dev->tx_queue_len = 100;
 port->clock_type = CLOCK_EXT;
 port->clock_rate = 0;
 port->clock_reg = CLK42X_SPEED_2048KHZ;
 port->id = pdev->id;
 port->dev = &pdev->dev;
 port->plat = pdev->dev.platform_data;
 netif_napi_add(dev, &port->napi, hss_hdlc_poll, NAPI_WEIGHT);

 if ((err = register_hdlc_device(dev)))
  goto err_free_netdev;

 platform_set_drvdata(pdev, port);

 netdev_info(dev, "initialized\n");
 return 0;

err_free_netdev:
 free_netdev(dev);
err_plat:
 npe_release(port->npe);
err_free:
 kfree(port);
 return err;
}
