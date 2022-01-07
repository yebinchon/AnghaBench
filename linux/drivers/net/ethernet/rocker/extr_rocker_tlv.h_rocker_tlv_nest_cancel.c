
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_tlv {int dummy; } ;
struct rocker_desc_info {char const* tlv_size; int data; } ;



__attribute__((used)) static inline void rocker_tlv_nest_cancel(struct rocker_desc_info *desc_info,
       const struct rocker_tlv *start)
{
 desc_info->tlv_size = (const char *) start - desc_info->data;
}
