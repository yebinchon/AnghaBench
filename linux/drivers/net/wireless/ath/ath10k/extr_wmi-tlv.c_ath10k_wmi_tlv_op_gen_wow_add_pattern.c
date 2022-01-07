
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wmi_tlv_wow_bitmap_pattern {void* pattern_id; void* bitmask_len; void* pattern_len; void* pattern_offset; int bitmaskbuf; int patternbuf; } ;
struct wmi_tlv_wow_add_pattern_cmd {void* pattern_type; void* pattern_id; void* vdev_id; } ;
struct wmi_tlv {void* len; void* tag; scalar_t__ value; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int WMI_TLV_TAG_ARRAY_STRUCT ;
 int WMI_TLV_TAG_ARRAY_UINT32 ;
 int WMI_TLV_TAG_STRUCT_WOW_ADD_PATTERN_CMD ;
 int WMI_TLV_TAG_STRUCT_WOW_BITMAP_PATTERN_T ;
 int WOW_BITMAP_PATTERN ;
 void* __cpu_to_le16 (int) ;
 void* __cpu_to_le32 (int) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,int,int) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,size_t) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_tlv_op_gen_wow_add_pattern(struct ath10k *ar, u32 vdev_id,
          u32 pattern_id, const u8 *pattern,
          const u8 *bitmask, int pattern_len,
          int pattern_offset)
{
 struct wmi_tlv_wow_add_pattern_cmd *cmd;
 struct wmi_tlv_wow_bitmap_pattern *bitmap;
 struct wmi_tlv *tlv;
 struct sk_buff *skb;
 void *ptr;
 size_t len;

 len = sizeof(*tlv) + sizeof(*cmd) +
       sizeof(*tlv) +
       sizeof(*tlv) + sizeof(*bitmap) +
       sizeof(*tlv) +
       sizeof(*tlv) +
       sizeof(*tlv) +
       sizeof(*tlv) +
       sizeof(*tlv) + sizeof(u32);

 skb = ath10k_wmi_alloc_skb(ar, len);
 if (!skb)
  return ERR_PTR(-ENOMEM);


 ptr = (void *)skb->data;
 tlv = ptr;
 tlv->tag = __cpu_to_le16(WMI_TLV_TAG_STRUCT_WOW_ADD_PATTERN_CMD);
 tlv->len = __cpu_to_le16(sizeof(*cmd));
 cmd = (void *)tlv->value;

 cmd->vdev_id = __cpu_to_le32(vdev_id);
 cmd->pattern_id = __cpu_to_le32(pattern_id);
 cmd->pattern_type = __cpu_to_le32(WOW_BITMAP_PATTERN);

 ptr += sizeof(*tlv);
 ptr += sizeof(*cmd);


 tlv = ptr;
 tlv->tag = __cpu_to_le16(WMI_TLV_TAG_ARRAY_STRUCT);
 tlv->len = __cpu_to_le16(sizeof(*tlv) + sizeof(*bitmap));

 ptr += sizeof(*tlv);

 tlv = ptr;
 tlv->tag = __cpu_to_le16(WMI_TLV_TAG_STRUCT_WOW_BITMAP_PATTERN_T);
 tlv->len = __cpu_to_le16(sizeof(*bitmap));
 bitmap = (void *)tlv->value;

 memcpy(bitmap->patternbuf, pattern, pattern_len);
 memcpy(bitmap->bitmaskbuf, bitmask, pattern_len);
 bitmap->pattern_offset = __cpu_to_le32(pattern_offset);
 bitmap->pattern_len = __cpu_to_le32(pattern_len);
 bitmap->bitmask_len = __cpu_to_le32(pattern_len);
 bitmap->pattern_id = __cpu_to_le32(pattern_id);

 ptr += sizeof(*tlv);
 ptr += sizeof(*bitmap);


 tlv = ptr;
 tlv->tag = __cpu_to_le16(WMI_TLV_TAG_ARRAY_STRUCT);
 tlv->len = __cpu_to_le16(0);

 ptr += sizeof(*tlv);


 tlv = ptr;
 tlv->tag = __cpu_to_le16(WMI_TLV_TAG_ARRAY_STRUCT);
 tlv->len = __cpu_to_le16(0);

 ptr += sizeof(*tlv);


 tlv = ptr;
 tlv->tag = __cpu_to_le16(WMI_TLV_TAG_ARRAY_STRUCT);
 tlv->len = __cpu_to_le16(0);

 ptr += sizeof(*tlv);


 tlv = ptr;
 tlv->tag = __cpu_to_le16(WMI_TLV_TAG_ARRAY_UINT32);
 tlv->len = __cpu_to_le16(0);

 ptr += sizeof(*tlv);


 tlv = ptr;
 tlv->tag = __cpu_to_le16(WMI_TLV_TAG_ARRAY_UINT32);
 tlv->len = __cpu_to_le16(sizeof(u32));

 ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi tlv wow add pattern vdev_id %d pattern_id %d, pattern_offset %d\n",
     vdev_id, pattern_id, pattern_offset);
 return skb;
}
