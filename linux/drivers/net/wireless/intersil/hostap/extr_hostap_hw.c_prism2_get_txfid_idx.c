
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int next_txfid; scalar_t__* intransmitfid; TYPE_2__* dev; int txfidlock; } ;
typedef TYPE_3__ local_info_t ;
struct TYPE_5__ {int tx_dropped; } ;
struct TYPE_6__ {TYPE_1__ stats; } ;


 int DEBUG_EXTRA2 ;
 int PDEBUG (int ,char*) ;
 int PRISM2_TXFID_COUNT ;
 scalar_t__ PRISM2_TXFID_EMPTY ;
 scalar_t__ PRISM2_TXFID_RESERVED ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int prism2_get_txfid_idx(local_info_t *local)
{
 int idx, end;
 unsigned long flags;

 spin_lock_irqsave(&local->txfidlock, flags);
 end = idx = local->next_txfid;
 do {
  if (local->intransmitfid[idx] == PRISM2_TXFID_EMPTY) {
   local->intransmitfid[idx] = PRISM2_TXFID_RESERVED;
   spin_unlock_irqrestore(&local->txfidlock, flags);
   return idx;
  }
  idx++;
  if (idx >= PRISM2_TXFID_COUNT)
   idx = 0;
 } while (idx != end);
 spin_unlock_irqrestore(&local->txfidlock, flags);

 PDEBUG(DEBUG_EXTRA2, "prism2_get_txfid_idx: no room in txfid buf: "
        "packet dropped\n");
 local->dev->stats.tx_dropped++;

 return -1;
}
