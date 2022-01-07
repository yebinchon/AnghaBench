
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int dirty; int curr; int filled; TYPE_2__* info; struct rx_desc* ring; } ;
struct TYPE_7__ {int numrx; } ;
struct velocity_info {TYPE_4__ rx; TYPE_3__ options; } ;
struct TYPE_5__ {int len; } ;
struct rx_desc {TYPE_1__ rdesc0; } ;
struct TYPE_6__ {int skb; } ;


 int OWNED_BY_NIC ;
 scalar_t__ velocity_alloc_rx_buf (struct velocity_info*,int) ;

__attribute__((used)) static int velocity_rx_refill(struct velocity_info *vptr)
{
 int dirty = vptr->rx.dirty, done = 0;

 do {
  struct rx_desc *rd = vptr->rx.ring + dirty;


  if (rd->rdesc0.len & OWNED_BY_NIC)
   break;

  if (!vptr->rx.info[dirty].skb) {
   if (velocity_alloc_rx_buf(vptr, dirty) < 0)
    break;
  }
  done++;
  dirty = (dirty < vptr->options.numrx - 1) ? dirty + 1 : 0;
 } while (dirty != vptr->rx.curr);

 if (done) {
  vptr->rx.dirty = dirty;
  vptr->rx.filled += done;
 }

 return done;
}
