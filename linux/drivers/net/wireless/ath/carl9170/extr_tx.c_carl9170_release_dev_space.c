
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ data; } ;
struct TYPE_4__ {int mem_blocks; int mem_block_size; } ;
struct ar9170 {int mem_lock; int mem_bitmap; int mem_free_blocks; TYPE_2__ fw; } ;
struct TYPE_3__ {int cookie; } ;
struct _carl9170_tx_superframe {TYPE_1__ s; } ;


 int DIV_ROUND_UP (int ,int ) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int atomic_add (int ,int *) ;
 int bitmap_release_region (int ,int,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void carl9170_release_dev_space(struct ar9170 *ar, struct sk_buff *skb)
{
 struct _carl9170_tx_superframe *super = (void *) skb->data;
 int cookie;


 cookie = super->s.cookie;

 super->s.cookie = 0;
 if (WARN_ON_ONCE(cookie == 0) ||
     WARN_ON_ONCE(cookie > ar->fw.mem_blocks))
  return;

 atomic_add(DIV_ROUND_UP(skb->len, ar->fw.mem_block_size),
     &ar->mem_free_blocks);

 spin_lock_bh(&ar->mem_lock);
 bitmap_release_region(ar->mem_bitmap, cookie - 1, 0);
 spin_unlock_bh(&ar->mem_lock);
}
