
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sxgbe_tx_ctxt_desc {int vltag_valid; int vlan_tag; } ;



__attribute__((used)) static void sxgbe_tx_ctxt_desc_set_vlantag(struct sxgbe_tx_ctxt_desc *p,
        int is_vlanvalid, int vlan_tag)
{
 if (is_vlanvalid) {
  p->vltag_valid = is_vlanvalid;
  p->vlan_tag = vlan_tag;
 }
}
