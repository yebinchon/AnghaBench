
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct hinic_txq {int free_sges; struct hinic_sq* sq; int netdev; } ;
struct hinic_sq_wqe {int dummy; } ;
struct hinic_sq {int dummy; } ;
struct hinic_dev {int dummy; } ;
struct TYPE_2__ {int nr_frags; } ;


 int hinic_sq_get_sges (struct hinic_sq_wqe*,int ,int) ;
 int hinic_sq_put_wqe (struct hinic_sq*,unsigned int) ;
 struct hinic_sq_wqe* hinic_sq_read_wqe (struct hinic_sq*,struct sk_buff**,unsigned int,int *) ;
 struct hinic_sq_wqe* hinic_sq_read_wqebb (struct hinic_sq*,struct sk_buff**,unsigned int*,int *) ;
 struct hinic_dev* netdev_priv (int ) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int tx_free_skb (struct hinic_dev*,struct sk_buff*,int ) ;

__attribute__((used)) static void free_all_tx_skbs(struct hinic_txq *txq)
{
 struct hinic_dev *nic_dev = netdev_priv(txq->netdev);
 struct hinic_sq *sq = txq->sq;
 struct hinic_sq_wqe *sq_wqe;
 unsigned int wqe_size;
 struct sk_buff *skb;
 int nr_sges;
 u16 ci;

 while ((sq_wqe = hinic_sq_read_wqebb(sq, &skb, &wqe_size, &ci))) {
  sq_wqe = hinic_sq_read_wqe(sq, &skb, wqe_size, &ci);
  if (!sq_wqe)
   break;

  nr_sges = skb_shinfo(skb)->nr_frags + 1;

  hinic_sq_get_sges(sq_wqe, txq->free_sges, nr_sges);

  hinic_sq_put_wqe(sq, wqe_size);

  tx_free_skb(nic_dev, skb, txq->free_sges);
 }
}
