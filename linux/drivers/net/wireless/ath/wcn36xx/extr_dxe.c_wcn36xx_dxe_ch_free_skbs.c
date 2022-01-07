
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx_dxe_ctl {struct wcn36xx_dxe_ctl* next; int skb; } ;
struct wcn36xx_dxe_ch {int desc_num; struct wcn36xx_dxe_ctl* head_blk_ctl; } ;
struct wcn36xx {int dummy; } ;


 int kfree_skb (int ) ;

__attribute__((used)) static void wcn36xx_dxe_ch_free_skbs(struct wcn36xx *wcn,
         struct wcn36xx_dxe_ch *wcn_ch)
{
 struct wcn36xx_dxe_ctl *cur = wcn_ch->head_blk_ctl;
 int i;

 for (i = 0; i < wcn_ch->desc_num; i++) {
  kfree_skb(cur->skb);
  cur = cur->next;
 }
}
