
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hso_net {scalar_t__ net; struct hso_device* mux_bulk_tx_buf; int mux_bulk_tx_urb; struct hso_device** mux_bulk_rx_buf_pool; int * mux_bulk_rx_urb_pool; int parent; } ;
struct hso_device {int dummy; } ;


 int MUX_BULK_RX_BUF_COUNT ;
 struct hso_net* dev2net (struct hso_device*) ;
 int free_netdev (scalar_t__) ;
 int kfree (struct hso_device*) ;
 int remove_net_device (int ) ;
 int unregister_netdev (scalar_t__) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void hso_free_net_device(struct hso_device *hso_dev)
{
 int i;
 struct hso_net *hso_net = dev2net(hso_dev);

 if (!hso_net)
  return;

 remove_net_device(hso_net->parent);

 if (hso_net->net)
  unregister_netdev(hso_net->net);


 for (i = 0; i < MUX_BULK_RX_BUF_COUNT; i++) {
  usb_free_urb(hso_net->mux_bulk_rx_urb_pool[i]);
  kfree(hso_net->mux_bulk_rx_buf_pool[i]);
  hso_net->mux_bulk_rx_buf_pool[i] = ((void*)0);
 }
 usb_free_urb(hso_net->mux_bulk_tx_urb);
 kfree(hso_net->mux_bulk_tx_buf);
 hso_net->mux_bulk_tx_buf = ((void*)0);

 if (hso_net->net)
  free_netdev(hso_net->net);

 kfree(hso_dev);
}
