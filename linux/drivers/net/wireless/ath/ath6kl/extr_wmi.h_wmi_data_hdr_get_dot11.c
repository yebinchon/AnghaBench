
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_data_hdr {int info; } ;


 int WMI_DATA_HDR_DATA_TYPE_802_11 ;
 int WMI_DATA_HDR_DATA_TYPE_MASK ;
 int WMI_DATA_HDR_DATA_TYPE_SHIFT ;

__attribute__((used)) static inline u8 wmi_data_hdr_get_dot11(struct wmi_data_hdr *dhdr)
{
 u8 data_type;

 data_type = (dhdr->info >> WMI_DATA_HDR_DATA_TYPE_SHIFT) &
       WMI_DATA_HDR_DATA_TYPE_MASK;
 return (data_type == WMI_DATA_HDR_DATA_TYPE_802_11);
}
