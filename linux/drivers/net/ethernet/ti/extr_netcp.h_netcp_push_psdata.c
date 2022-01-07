
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netcp_packet {scalar_t__ psdata_len; int * psdata; } ;


 scalar_t__ NETCP_PSDATA_LEN ;

__attribute__((used)) static inline u32 *netcp_push_psdata(struct netcp_packet *p_info,
         unsigned int bytes)
{
 u32 *buf;
 unsigned int words;

 if ((bytes & 0x03) != 0)
  return ((void*)0);
 words = bytes >> 2;

 if ((p_info->psdata_len + words) > NETCP_PSDATA_LEN)
  return ((void*)0);

 p_info->psdata_len += words;
 buf = &p_info->psdata[NETCP_PSDATA_LEN - p_info->psdata_len];
 return buf;
}
