
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ROCKER_TLV_ALIGN (int ) ;
 int rocker_tlv_attr_size (int) ;

__attribute__((used)) static inline int rocker_tlv_total_size(int payload)
{
 return ROCKER_TLV_ALIGN(rocker_tlv_attr_size(payload));
}
