
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wil6210_priv {int** ring2cid_tid; TYPE_1__* sta; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int addr; } ;


 int ether_addr_copy (int *,int ) ;
 int * wil_skb_get_da (struct sk_buff*) ;

__attribute__((used)) static void wil_set_da_for_vring(struct wil6210_priv *wil,
     struct sk_buff *skb, int vring_index)
{
 u8 *da = wil_skb_get_da(skb);
 int cid = wil->ring2cid_tid[vring_index][0];

 ether_addr_copy(da, wil->sta[cid].addr);
}
