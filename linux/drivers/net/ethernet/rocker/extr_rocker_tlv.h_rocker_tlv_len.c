
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_tlv {int len; } ;


 int ROCKER_TLV_HDRLEN ;

__attribute__((used)) static inline int rocker_tlv_len(const struct rocker_tlv *tlv)
{
 return tlv->len - ROCKER_TLV_HDRLEN;
}
