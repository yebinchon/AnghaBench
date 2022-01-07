
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_cmd_hdr {int cmd_id; } ;


 unsigned int le16_to_cpu (int ) ;

__attribute__((used)) static inline unsigned int ath6kl_get_wmi_id(void *buf, size_t buf_len)
{
 struct wmi_cmd_hdr *hdr = buf;

 if (buf_len < sizeof(*hdr))
  return 0;

 return le16_to_cpu(hdr->cmd_id);
}
