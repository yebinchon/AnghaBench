
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt7615_vif {int omac_idx; } ;
struct bss_info_ext_bss {int mbss_tsf_offset; void* len; void* tag; } ;


 int BCN_TX_ESTIMATE_TIME ;
 int BSS_INFO_EXT_BSS ;
 int EXT_BSSID_START ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static void
mt7615_mcu_bss_info_ext_header(struct mt7615_vif *mvif, u8 *data)
{


 struct bss_info_ext_bss *hdr = (struct bss_info_ext_bss *)data;
 int ext_bss_idx, tsf_offset;

 ext_bss_idx = mvif->omac_idx - EXT_BSSID_START;
 if (ext_bss_idx < 0)
  return;

 hdr->tag = cpu_to_le16(BSS_INFO_EXT_BSS);
 hdr->len = cpu_to_le16(sizeof(struct bss_info_ext_bss));
 tsf_offset = ext_bss_idx * (4096 + 20);
 hdr->mbss_tsf_offset = cpu_to_le32(tsf_offset);
}
