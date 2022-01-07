
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int cb; } ;
struct TYPE_2__ {int tail_align; int head_align; } ;
struct cfhsi {int aggregation_len; TYPE_1__ cfg; } ;
struct caif_payload_info {int hdr_len; } ;


 int PAD_POW2 (int,int ) ;

__attribute__((used)) static void cfhsi_update_aggregation_stats(struct cfhsi *cfhsi,
        const struct sk_buff *skb,
        int direction)
{
 struct caif_payload_info *info;
 int hpad, tpad, len;

 info = (struct caif_payload_info *)&skb->cb;
 hpad = 1 + PAD_POW2((info->hdr_len + 1), cfhsi->cfg.head_align);
 tpad = PAD_POW2((skb->len + hpad), cfhsi->cfg.tail_align);
 len = skb->len + hpad + tpad;

 if (direction > 0)
  cfhsi->aggregation_len += len;
 else if (direction < 0)
  cfhsi->aggregation_len -= len;
}
