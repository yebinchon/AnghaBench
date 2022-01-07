
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_bar {int frame_control; } ;
struct carl9170_bar_list_entry {int list; struct sk_buff* skb; } ;
struct ar9170 {int * bar_list_lock; int * bar_list; } ;
struct _carl9170_tx_superframe {scalar_t__ frame_data; } ;


 int GFP_ATOMIC ;
 int WARN_ON_ONCE (int) ;
 int ieee80211_is_back_req (int ) ;
 struct carl9170_bar_list_entry* kmalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 unsigned int skb_get_queue_mapping (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void carl9170_bar_check(struct ar9170 *ar, struct sk_buff *skb)
{
 struct _carl9170_tx_superframe *super = (void *) skb->data;
 struct ieee80211_bar *bar = (void *) super->frame_data;

 if (unlikely(ieee80211_is_back_req(bar->frame_control)) &&
     skb->len >= sizeof(struct ieee80211_bar)) {
  struct carl9170_bar_list_entry *entry;
  unsigned int queue = skb_get_queue_mapping(skb);

  entry = kmalloc(sizeof(*entry), GFP_ATOMIC);
  if (!WARN_ON_ONCE(!entry)) {
   entry->skb = skb;
   spin_lock_bh(&ar->bar_list_lock[queue]);
   list_add_tail_rcu(&entry->list, &ar->bar_list[queue]);
   spin_unlock_bh(&ar->bar_list_lock[queue]);
  }
 }
}
