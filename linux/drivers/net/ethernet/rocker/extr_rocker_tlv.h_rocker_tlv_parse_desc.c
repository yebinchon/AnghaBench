
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rocker_tlv {int dummy; } ;
struct rocker_desc_info {TYPE_1__* desc; int data; } ;
struct TYPE_2__ {int tlv_size; } ;


 int rocker_tlv_parse (struct rocker_tlv const**,int,int ,int ) ;

__attribute__((used)) static inline void
rocker_tlv_parse_desc(const struct rocker_tlv **tb, int maxtype,
        const struct rocker_desc_info *desc_info)
{
 rocker_tlv_parse(tb, maxtype, desc_info->data,
    desc_info->desc->tlv_size);
}
