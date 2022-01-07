
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rocker_tlv_attr_size (int) ;
 int rocker_tlv_total_size (int) ;

__attribute__((used)) static inline int rocker_tlv_padlen(int payload)
{
 return rocker_tlv_total_size(payload) - rocker_tlv_attr_size(payload);
}
