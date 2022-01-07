
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_data_hdr {int info; } ;


 int WMI_DATA_HDR_UP_MASK ;
 int WMI_DATA_HDR_UP_SHIFT ;

__attribute__((used)) static inline u8 wmi_data_hdr_get_up(struct wmi_data_hdr *dhdr)
{
 return (dhdr->info >> WMI_DATA_HDR_UP_SHIFT) & WMI_DATA_HDR_UP_MASK;
}
