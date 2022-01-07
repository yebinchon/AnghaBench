
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct mt7615_vif {scalar_t__ omac_idx; int band_idx; } ;
struct bss_info_omac {scalar_t__ hw_bss_idx; scalar_t__ omac_idx; int conn_type; int band_idx; void* len; void* tag; } ;


 int BSS_INFO_OMAC ;
 scalar_t__ EXT_BSSID_START ;
 scalar_t__ HW_BSSID_0 ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void
mt7615_mcu_bss_info_omac_header(struct mt7615_vif *mvif, u8 *data,
    u32 conn_type)
{
 struct bss_info_omac *hdr = (struct bss_info_omac *)data;
 u8 idx;

 idx = mvif->omac_idx > EXT_BSSID_START ? HW_BSSID_0 : mvif->omac_idx;
 hdr->tag = cpu_to_le16(BSS_INFO_OMAC);
 hdr->len = cpu_to_le16(sizeof(struct bss_info_omac));
 hdr->hw_bss_idx = idx;
 hdr->omac_idx = mvif->omac_idx;
 hdr->band_idx = mvif->band_idx;
 hdr->conn_type = cpu_to_le32(conn_type);
}
