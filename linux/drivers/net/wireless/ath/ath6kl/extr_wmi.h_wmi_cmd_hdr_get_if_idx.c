
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_cmd_hdr {int info1; } ;


 int WMI_CMD_HDR_IF_ID_MASK ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline u8 wmi_cmd_hdr_get_if_idx(struct wmi_cmd_hdr *chdr)
{
 return le16_to_cpu(chdr->info1) & WMI_CMD_HDR_IF_ID_MASK;
}
