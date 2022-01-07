
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {void* len; void* type; } ;
struct mrvl_ie_rates_param_set {TYPE_1__ header; } ;


 size_t TLV_TYPE_RATES ;
 void* cpu_to_le16 (size_t) ;
 size_t lbs_add_rates (int *) ;

__attribute__((used)) static int lbs_add_supported_rates_tlv(u8 *tlv)
{
 size_t i;
 struct mrvl_ie_rates_param_set *rate_tlv = (void *)tlv;






 rate_tlv->header.type = cpu_to_le16(TLV_TYPE_RATES);
 tlv += sizeof(rate_tlv->header);
 i = lbs_add_rates(tlv);
 tlv += i;
 rate_tlv->header.len = cpu_to_le16(i);
 return sizeof(rate_tlv->header) + i;
}
