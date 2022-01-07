
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sk_buff {scalar_t__ data; int len; } ;
struct TYPE_3__ {int mem_blocks; int mem_block_size; } ;
struct ar9170 {int mem_free_blocks; int mem_lock; TYPE_1__ fw; int mem_bitmap; int mem_allocs; } ;
struct TYPE_4__ {scalar_t__ cookie; } ;
struct _carl9170_tx_superframe {TYPE_2__ s; } ;


 unsigned int DIV_ROUND_UP (int ,int ) ;
 int ENOSPC ;
 int atomic_add (unsigned int,int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_sub_return (unsigned int,int *) ;
 int bitmap_find_free_region (int ,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int carl9170_alloc_dev_space(struct ar9170 *ar, struct sk_buff *skb)
{
 struct _carl9170_tx_superframe *super = (void *) skb->data;
 unsigned int chunks;
 int cookie = -1;

 atomic_inc(&ar->mem_allocs);

 chunks = DIV_ROUND_UP(skb->len, ar->fw.mem_block_size);
 if (unlikely(atomic_sub_return(chunks, &ar->mem_free_blocks) < 0)) {
  atomic_add(chunks, &ar->mem_free_blocks);
  return -ENOSPC;
 }

 spin_lock_bh(&ar->mem_lock);
 cookie = bitmap_find_free_region(ar->mem_bitmap, ar->fw.mem_blocks, 0);
 spin_unlock_bh(&ar->mem_lock);

 if (unlikely(cookie < 0)) {
  atomic_add(chunks, &ar->mem_free_blocks);
  return -ENOSPC;
 }

 super = (void *) skb->data;
 super->s.cookie = (u8) cookie + 1;
 return 0;
}
