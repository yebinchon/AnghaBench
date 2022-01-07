
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct p54_hdr {int req_id; scalar_t__ data; } ;
struct TYPE_4__ {int len; int data; } ;
struct TYPE_3__ {int len; int data; } ;
struct p54_eeprom_lm86 {TYPE_2__ v1; TYPE_1__ v2; } ;
struct p54_common {int fw_var; int eeprom_comp; int * eeprom; } ;


 int complete (int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int le16_to_cpu (int ) ;
 int memcpy (int *,int ,int ) ;
 struct sk_buff* p54_find_and_unlink_skb (struct p54_common*,int ) ;

__attribute__((used)) static void p54_rx_eeprom_readback(struct p54_common *priv,
       struct sk_buff *skb)
{
 struct p54_hdr *hdr = (struct p54_hdr *) skb->data;
 struct p54_eeprom_lm86 *eeprom = (struct p54_eeprom_lm86 *) hdr->data;
 struct sk_buff *tmp;

 if (!priv->eeprom)
  return ;

 if (priv->fw_var >= 0x509) {
  memcpy(priv->eeprom, eeprom->v2.data,
         le16_to_cpu(eeprom->v2.len));
 } else {
  memcpy(priv->eeprom, eeprom->v1.data,
         le16_to_cpu(eeprom->v1.len));
 }

 priv->eeprom = ((void*)0);
 tmp = p54_find_and_unlink_skb(priv, hdr->req_id);
 dev_kfree_skb_any(tmp);
 complete(&priv->eeprom_comp);
}
