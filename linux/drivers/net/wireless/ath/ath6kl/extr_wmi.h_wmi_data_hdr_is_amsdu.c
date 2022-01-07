
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_data_hdr {int info2; } ;


 int WMI_DATA_HDR_AMSDU_MASK ;
 int WMI_DATA_HDR_AMSDU_SHIFT ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline u8 wmi_data_hdr_is_amsdu(struct wmi_data_hdr *dhdr)
{
 return (le16_to_cpu(dhdr->info2) >> WMI_DATA_HDR_AMSDU_SHIFT) &
          WMI_DATA_HDR_AMSDU_MASK;
}
