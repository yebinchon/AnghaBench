
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rocker_desc_info {int tlv_size; TYPE_1__* desc; int data_size; } ;
struct TYPE_2__ {int tlv_size; int buf_size; } ;



__attribute__((used)) static void rocker_desc_commit(const struct rocker_desc_info *desc_info)
{
 desc_info->desc->buf_size = desc_info->data_size;
 desc_info->desc->tlv_size = desc_info->tlv_size;
}
