
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sxgbe_tx_ctxt_desc {int ivlan_tag_valid; int ivlan_tag; int ivlan_tag_ctl; } ;



__attribute__((used)) static void sxgbe_tx_ctxt_desc_set_ivlantag(struct sxgbe_tx_ctxt_desc *p,
         int is_ivlanvalid, int ivlan_tag,
         int ivlan_ctl)
{
 if (is_ivlanvalid) {
  p->ivlan_tag_valid = is_ivlanvalid;
  p->ivlan_tag = ivlan_tag;
  p->ivlan_tag_ctl = ivlan_ctl;
 }
}
