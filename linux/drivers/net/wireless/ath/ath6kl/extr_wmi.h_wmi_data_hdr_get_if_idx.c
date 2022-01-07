
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_data_hdr {int info3; } ;


 int WMI_DATA_HDR_IF_IDX_MASK ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline u8 wmi_data_hdr_get_if_idx(struct wmi_data_hdr *dhdr)
{
 return le16_to_cpu(dhdr->info3) & WMI_DATA_HDR_IF_IDX_MASK;
}
