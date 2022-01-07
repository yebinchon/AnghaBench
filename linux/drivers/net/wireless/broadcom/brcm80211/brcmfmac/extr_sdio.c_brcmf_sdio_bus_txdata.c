
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint ;
typedef scalar_t__ u16 ;
struct sk_buff {int priority; scalar_t__ cb; int len; int data; } ;
struct device {int dummy; } ;
struct brcmf_sdio_dev {scalar_t__ state; struct brcmf_sdio* bus; } ;
struct TYPE_4__ {int fcqueued; } ;
struct brcmf_sdio {int txoff; int txq; int txq_lock; int tx_hdrlen; TYPE_2__ sdcnt; } ;
struct TYPE_3__ {struct brcmf_sdio_dev* sdio; } ;
struct brcmf_bus {TYPE_1__ bus_priv; } ;


 scalar_t__ BRCMF_SDIOD_DATA ;
 int EBADE ;
 int EIO ;
 int ENOSR ;
 int PRIOMASK ;
 int TRACE ;
 scalar_t__ TXHI ;
 int brcmf_dbg (int ,char*,scalar_t__,...) ;
 int brcmf_err (char*) ;
 int brcmf_proto_bcdc_txflowblock (struct device*,int) ;
 int brcmf_sdio_prec_enq (int *,struct sk_buff*,size_t) ;
 int brcmf_sdio_trigger_dpc (struct brcmf_sdio*) ;
 struct brcmf_bus* dev_get_drvdata (struct device*) ;
 scalar_t__ pktq_len (int *) ;
 scalar_t__ pktq_plen (int *,size_t) ;
 size_t prio2prec (int) ;
 scalar_t__* qcount ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_push (struct sk_buff*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int brcmf_sdio_bus_txdata(struct device *dev, struct sk_buff *pkt)
{
 int ret = -EBADE;
 uint prec;
 struct brcmf_bus *bus_if = dev_get_drvdata(dev);
 struct brcmf_sdio_dev *sdiodev = bus_if->bus_priv.sdio;
 struct brcmf_sdio *bus = sdiodev->bus;

 brcmf_dbg(TRACE, "Enter: pkt: data %p len %d\n", pkt->data, pkt->len);
 if (sdiodev->state != BRCMF_SDIOD_DATA)
  return -EIO;


 skb_push(pkt, bus->tx_hdrlen);


 prec = prio2prec((pkt->priority & PRIOMASK));



 brcmf_dbg(TRACE, "deferring pktq len %d\n", pktq_len(&bus->txq));
 bus->sdcnt.fcqueued++;


 spin_lock_bh(&bus->txq_lock);

 *(u16 *)(pkt->cb) = 0;
 if (!brcmf_sdio_prec_enq(&bus->txq, pkt, prec)) {
  skb_pull(pkt, bus->tx_hdrlen);
  brcmf_err("out of bus->txq !!!\n");
  ret = -ENOSR;
 } else {
  ret = 0;
 }

 if (pktq_len(&bus->txq) >= TXHI) {
  bus->txoff = 1;
  brcmf_proto_bcdc_txflowblock(dev, 1);
 }
 spin_unlock_bh(&bus->txq_lock);






 brcmf_sdio_trigger_dpc(bus);
 return ret;
}
