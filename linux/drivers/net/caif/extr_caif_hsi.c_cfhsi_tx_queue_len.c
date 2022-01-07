
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfhsi {int * qhead; } ;


 int CFHSI_PRIO_LAST ;
 scalar_t__ skb_queue_len (int *) ;

__attribute__((used)) static int cfhsi_tx_queue_len(struct cfhsi *cfhsi)
{
 int i, len = 0;
 for (i = 0; i < CFHSI_PRIO_LAST; ++i)
  len += skb_queue_len(&cfhsi->qhead[i]);
 return len;
}
