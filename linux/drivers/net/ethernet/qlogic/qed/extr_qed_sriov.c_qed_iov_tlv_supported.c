
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ CHANNEL_TLV_MAX ;
 scalar_t__ CHANNEL_TLV_NONE ;

__attribute__((used)) static bool qed_iov_tlv_supported(u16 tlvtype)
{
 return CHANNEL_TLV_NONE < tlvtype && tlvtype < CHANNEL_TLV_MAX;
}
