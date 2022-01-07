
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spider_net_hw_descr {int dmac_cmd_status; scalar_t__ next_descr_addr; int data_error; int data_status; int valid_size; int result_size; int buf_size; int buf_addr; } ;
struct spider_net_descr_chain {int num_desc; struct spider_net_descr* ring; struct spider_net_descr* head; struct spider_net_descr* tail; } ;
struct spider_net_descr {struct spider_net_descr* next; int bus_addr; int skb; struct spider_net_hw_descr* hwdescr; } ;
struct spider_net_card {TYPE_1__* netdev; struct spider_net_descr_chain rx_chain; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int SPIDER_NET_GDACNEXTDA ;
 int SPIDER_NET_GDACTDPA ;
 int dev_info (struct device*,char*,...) ;
 int spider_net_get_descr_status (struct spider_net_hw_descr*) ;
 int spider_net_read_reg (struct spider_net_card*,int ) ;

__attribute__((used)) static void show_rx_chain(struct spider_net_card *card)
{
 struct spider_net_descr_chain *chain = &card->rx_chain;
 struct spider_net_descr *start= chain->tail;
 struct spider_net_descr *descr= start;
 struct spider_net_hw_descr *hwd = start->hwdescr;
 struct device *dev = &card->netdev->dev;
 u32 curr_desc, next_desc;
 int status;

 int tot = 0;
 int cnt = 0;
 int off = start - chain->ring;
 int cstat = hwd->dmac_cmd_status;

 dev_info(dev, "Total number of descrs=%d\n",
  chain->num_desc);
 dev_info(dev, "Chain tail located at descr=%d, status=0x%x\n",
  off, cstat);

 curr_desc = spider_net_read_reg(card, SPIDER_NET_GDACTDPA);
 next_desc = spider_net_read_reg(card, SPIDER_NET_GDACNEXTDA);

 status = cstat;
 do
 {
  hwd = descr->hwdescr;
  off = descr - chain->ring;
  status = hwd->dmac_cmd_status;

  if (descr == chain->head)
   dev_info(dev, "Chain head is at %d, head status=0x%x\n",
            off, status);

  if (curr_desc == descr->bus_addr)
   dev_info(dev, "HW curr desc (GDACTDPA) is at %d, status=0x%x\n",
            off, status);

  if (next_desc == descr->bus_addr)
   dev_info(dev, "HW next desc (GDACNEXTDA) is at %d, status=0x%x\n",
            off, status);

  if (hwd->next_descr_addr == 0)
   dev_info(dev, "chain is cut at %d\n", off);

  if (cstat != status) {
   int from = (chain->num_desc + off - cnt) % chain->num_desc;
   int to = (chain->num_desc + off - 1) % chain->num_desc;
   dev_info(dev, "Have %d (from %d to %d) descrs "
            "with stat=0x%08x\n", cnt, from, to, cstat);
   cstat = status;
   cnt = 0;
  }

  cnt ++;
  tot ++;
  descr = descr->next;
 } while (descr != start);

 dev_info(dev, "Last %d descrs with stat=0x%08x "
          "for a total of %d descrs\n", cnt, cstat, tot);
}
