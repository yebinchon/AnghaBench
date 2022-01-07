
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wmi_data_hdr {int info2; } ;


 int WMI_DATA_HDR_SEQNO_MASK ;
 int WMI_DATA_HDR_SEQNO_SHIFT ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline u16 wmi_data_hdr_get_seqno(struct wmi_data_hdr *dhdr)
{
 return (le16_to_cpu(dhdr->info2) >> WMI_DATA_HDR_SEQNO_SHIFT) &
    WMI_DATA_HDR_SEQNO_MASK;
}
