
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netcp_packet {int psdata_len; } ;


 int EINVAL ;

__attribute__((used)) static inline int netcp_align_psdata(struct netcp_packet *p_info,
         unsigned int byte_align)
{
 int padding;

 switch (byte_align) {
 case 0:
  padding = -EINVAL;
  break;
 case 1:
 case 2:
 case 4:
  padding = 0;
  break;
 case 8:
  padding = (p_info->psdata_len << 2) % 8;
  break;
 case 16:
  padding = (p_info->psdata_len << 2) % 16;
  break;
 default:
  padding = (p_info->psdata_len << 2) % byte_align;
  break;
 }
 return padding;
}
