
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; } ;


 int PL_PEER_E ;
 int PL_RESET_IN ;
 int PL_RESET_OUT ;
 int PL_S_EN ;
 int link ;
 int netif_dbg (struct usbnet*,int ,int ,char*,int) ;
 scalar_t__ netif_msg_probe (struct usbnet*) ;
 int pl_set_QuickLink_features (struct usbnet*,int) ;

__attribute__((used)) static int pl_reset(struct usbnet *dev)
{
 int status;




 status = pl_set_QuickLink_features(dev,
  PL_S_EN|PL_RESET_OUT|PL_RESET_IN|PL_PEER_E);
 if (status != 0 && netif_msg_probe(dev))
  netif_dbg(dev, link, dev->net, "pl_reset --> %d\n", status);
 return 0;
}
