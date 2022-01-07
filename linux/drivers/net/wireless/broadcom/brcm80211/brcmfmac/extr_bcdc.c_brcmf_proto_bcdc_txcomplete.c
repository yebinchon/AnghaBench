
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct device {int dummy; } ;
struct brcmf_if {int dummy; } ;
struct brcmf_bus {TYPE_2__* drvr; } ;
struct brcmf_bcdc {int fws; } ;
struct TYPE_4__ {TYPE_1__* proto; } ;
struct TYPE_3__ {struct brcmf_bcdc* pd; } ;


 int brcmf_fws_bustxfail (int ,struct sk_buff*) ;
 scalar_t__ brcmf_fws_fc_active (int ) ;
 scalar_t__ brcmf_proto_bcdc_hdrpull (TYPE_2__*,int,struct sk_buff*,struct brcmf_if**) ;
 int brcmf_txfinalize (struct brcmf_if*,struct sk_buff*,int) ;
 int brcmu_pkt_buf_free_skb (struct sk_buff*) ;
 struct brcmf_bus* dev_get_drvdata (struct device*) ;

void
brcmf_proto_bcdc_txcomplete(struct device *dev, struct sk_buff *txp,
       bool success)
{
 struct brcmf_bus *bus_if = dev_get_drvdata(dev);
 struct brcmf_bcdc *bcdc = bus_if->drvr->proto->pd;
 struct brcmf_if *ifp;


 if (brcmf_fws_fc_active(bcdc->fws)) {
  if (!success)
   brcmf_fws_bustxfail(bcdc->fws, txp);
 } else {
  if (brcmf_proto_bcdc_hdrpull(bus_if->drvr, 0, txp, &ifp))
   brcmu_pkt_buf_free_skb(txp);
  else
   brcmf_txfinalize(ifp, txp, success);
 }
}
