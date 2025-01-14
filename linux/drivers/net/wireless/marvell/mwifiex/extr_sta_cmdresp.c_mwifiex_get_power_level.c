
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct mwifiex_types_power_group {int length; } ;
struct mwifiex_private {void* max_tx_power_level; void* min_tx_power_level; } ;
struct mwifiex_power_group {int power_max; int power_min; } ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static int mwifiex_get_power_level(struct mwifiex_private *priv, void *data_buf)
{
 int length, max_power = -1, min_power = -1;
 struct mwifiex_types_power_group *pg_tlv_hdr;
 struct mwifiex_power_group *pg;

 if (!data_buf)
  return -1;

 pg_tlv_hdr = (struct mwifiex_types_power_group *)((u8 *)data_buf);
 pg = (struct mwifiex_power_group *)
  ((u8 *) pg_tlv_hdr + sizeof(struct mwifiex_types_power_group));
 length = le16_to_cpu(pg_tlv_hdr->length);


 if (length < sizeof(struct mwifiex_power_group))
  return 0;

 max_power = pg->power_max;
 min_power = pg->power_min;
 length -= sizeof(struct mwifiex_power_group);

 while (length >= sizeof(struct mwifiex_power_group)) {
  pg++;
  if (max_power < pg->power_max)
   max_power = pg->power_max;

  if (min_power > pg->power_min)
   min_power = pg->power_min;

  length -= sizeof(struct mwifiex_power_group);
 }
 priv->min_tx_power_level = (u8) min_power;
 priv->max_tx_power_level = (u8) max_power;

 return 0;
}
