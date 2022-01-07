
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ath10k_hif_sg_item {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct ath10k {TYPE_2__ hif; } ;
struct TYPE_3__ {int (* tx_sg ) (struct ath10k*,int ,struct ath10k_hif_sg_item*,int) ;} ;


 int stub1 (struct ath10k*,int ,struct ath10k_hif_sg_item*,int) ;

__attribute__((used)) static inline int ath10k_hif_tx_sg(struct ath10k *ar, u8 pipe_id,
       struct ath10k_hif_sg_item *items,
       int n_items)
{
 return ar->hif.ops->tx_sg(ar, pipe_id, items, n_items);
}
