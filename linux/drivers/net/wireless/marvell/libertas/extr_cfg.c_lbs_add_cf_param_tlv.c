
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {void* len; void* type; } ;
struct mrvl_ie_cf_param_set {TYPE_1__ header; } ;


 int TLV_TYPE_CF ;
 void* cpu_to_le16 (int) ;

__attribute__((used)) static int lbs_add_cf_param_tlv(u8 *tlv)
{
 struct mrvl_ie_cf_param_set *cf = (void *)tlv;
 cf->header.type = cpu_to_le16(TLV_TYPE_CF);
 cf->header.len = cpu_to_le16(sizeof(*cf)-sizeof(cf->header));
 return sizeof(*cf);
}
