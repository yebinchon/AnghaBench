
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct tg3_rx_prodring_set {int rx_std_prod_idx; int rx_std_cons_idx; int rx_jmb_prod_idx; int rx_jmb_cons_idx; TYPE_1__* rx_jmb; TYPE_2__* rx_jmb_buffers; struct tg3_rx_buffer_desc* rx_std; TYPE_2__* rx_std_buffers; } ;
struct tg3_rx_buffer_desc {int addr_lo; int addr_hi; } ;
struct tg3 {int rx_std_ring_mask; int rx_jmb_ring_mask; } ;
struct ring_info {int dummy; } ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {struct tg3_rx_buffer_desc std; } ;


 int ENOSPC ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int min (int,int) ;
 int smp_rmb () ;

__attribute__((used)) static int tg3_rx_prodring_xfer(struct tg3 *tp,
    struct tg3_rx_prodring_set *dpr,
    struct tg3_rx_prodring_set *spr)
{
 u32 si, di, cpycnt, src_prod_idx;
 int i, err = 0;

 while (1) {
  src_prod_idx = spr->rx_std_prod_idx;




  smp_rmb();

  if (spr->rx_std_cons_idx == src_prod_idx)
   break;

  if (spr->rx_std_cons_idx < src_prod_idx)
   cpycnt = src_prod_idx - spr->rx_std_cons_idx;
  else
   cpycnt = tp->rx_std_ring_mask + 1 -
     spr->rx_std_cons_idx;

  cpycnt = min(cpycnt,
        tp->rx_std_ring_mask + 1 - dpr->rx_std_prod_idx);

  si = spr->rx_std_cons_idx;
  di = dpr->rx_std_prod_idx;

  for (i = di; i < di + cpycnt; i++) {
   if (dpr->rx_std_buffers[i].data) {
    cpycnt = i - di;
    err = -ENOSPC;
    break;
   }
  }

  if (!cpycnt)
   break;





  smp_rmb();

  memcpy(&dpr->rx_std_buffers[di],
         &spr->rx_std_buffers[si],
         cpycnt * sizeof(struct ring_info));

  for (i = 0; i < cpycnt; i++, di++, si++) {
   struct tg3_rx_buffer_desc *sbd, *dbd;
   sbd = &spr->rx_std[si];
   dbd = &dpr->rx_std[di];
   dbd->addr_hi = sbd->addr_hi;
   dbd->addr_lo = sbd->addr_lo;
  }

  spr->rx_std_cons_idx = (spr->rx_std_cons_idx + cpycnt) &
           tp->rx_std_ring_mask;
  dpr->rx_std_prod_idx = (dpr->rx_std_prod_idx + cpycnt) &
           tp->rx_std_ring_mask;
 }

 while (1) {
  src_prod_idx = spr->rx_jmb_prod_idx;




  smp_rmb();

  if (spr->rx_jmb_cons_idx == src_prod_idx)
   break;

  if (spr->rx_jmb_cons_idx < src_prod_idx)
   cpycnt = src_prod_idx - spr->rx_jmb_cons_idx;
  else
   cpycnt = tp->rx_jmb_ring_mask + 1 -
     spr->rx_jmb_cons_idx;

  cpycnt = min(cpycnt,
        tp->rx_jmb_ring_mask + 1 - dpr->rx_jmb_prod_idx);

  si = spr->rx_jmb_cons_idx;
  di = dpr->rx_jmb_prod_idx;

  for (i = di; i < di + cpycnt; i++) {
   if (dpr->rx_jmb_buffers[i].data) {
    cpycnt = i - di;
    err = -ENOSPC;
    break;
   }
  }

  if (!cpycnt)
   break;





  smp_rmb();

  memcpy(&dpr->rx_jmb_buffers[di],
         &spr->rx_jmb_buffers[si],
         cpycnt * sizeof(struct ring_info));

  for (i = 0; i < cpycnt; i++, di++, si++) {
   struct tg3_rx_buffer_desc *sbd, *dbd;
   sbd = &spr->rx_jmb[si].std;
   dbd = &dpr->rx_jmb[di].std;
   dbd->addr_hi = sbd->addr_hi;
   dbd->addr_lo = sbd->addr_lo;
  }

  spr->rx_jmb_cons_idx = (spr->rx_jmb_cons_idx + cpycnt) &
           tp->rx_jmb_ring_mask;
  dpr->rx_jmb_prod_idx = (dpr->rx_jmb_prod_idx + cpycnt) &
           tp->rx_jmb_ring_mask;
 }

 return err;
}
