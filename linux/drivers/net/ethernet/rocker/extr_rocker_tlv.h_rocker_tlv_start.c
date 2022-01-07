
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_tlv {int dummy; } ;
struct rocker_desc_info {int tlv_size; scalar_t__ data; } ;



__attribute__((used)) static inline struct rocker_tlv *
rocker_tlv_start(struct rocker_desc_info *desc_info)
{
 return (struct rocker_tlv *) ((char *) desc_info->data +
            desc_info->tlv_size);
}
